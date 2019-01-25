<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        
    }

    public function homePage()
    {
        $data['posters'] = DB::select('select poster from tb_movie where film_id in(	
            233820,249928,263659,254984)');
        $data['upcoming'] = DB::select('select poster from tb_movie where film_id in(	
            5437928,5083738,1226837,7775622)');
        return view('welcome', $data);
    }
    public function nowShowing()
    {
        $data['date'] = date('D, d-m-Y');
        $data['movies'] = DB::select('select * from tb_movie');
        return view('pages.nowshowing', $data);
    }
    

}
