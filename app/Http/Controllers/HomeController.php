<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data['poster'] = DB::select('select * from tb_movie');
        
        return view('welcome', $data);
    }
}
