<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class TicketController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('pages.ticket');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function orderTicket(Request $request)
    {
        $id = $request->input('film_id');
        $data['movie'] = DB::select('select * from tb_movie where film_id = "'.$id.'"');
        $data['time']  = DB::select('SELECT DISTINCT film_id, tb_tayang.kd_jadwal, jam_mulai FROM tb_tayang JOIN tb_jadwal 
        ON tb_tayang.kd_jadwal = tb_jadwal.kd_jadwal 
        WHERE film_id = "'.$id.'"');
        $data['date'] = DB::select('SELECT DISTINCT tgl_tayang FROM tb_tayang
        WHERE film_id = "'.$id.'"');
        return view('pages.order', $data);
    }

    public function seat(Request $request)
    {
        $kd_jadwal = $request->input('kd_jadwal');
        $data['seat'] = DB::select('SELECT * FROM tb_tayang WHERE kd_jadwal = "'.$kd_jadwal.'"' );
        
        return view('pages.ticket',$data);
         
    }

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
