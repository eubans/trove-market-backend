<?php

namespace App\Http\Controllers;

use App\Models\User;

class UserController extends Controller
{
    public static $model = User::class;

    public function getAllUser()
    {
        $users = User::get();

        return response()->json($users, 200);
    }
}
