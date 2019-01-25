<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data['poster'] = DB::select('select * from users where active = ?', [1])
        return view('welcome');
    }
}
