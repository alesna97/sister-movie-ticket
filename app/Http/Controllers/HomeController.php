<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $data['posters'] = DB::select('select poster from tb_movie where film_id in(	
            233820,249928,263659,254984)');
        $data['upcoming'] = DB::select('select poster from tb_movie where film_id in(	
            5437928,5083738,1226837,7775622)');
        return view('welcome', $data);
    }
}
