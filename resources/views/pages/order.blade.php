@extends('layout.master')

@section('title')
    Order Ticket
@endsection()

@section('content')
    <div class="container">
        <div class="row">
            @foreach ($movie as $record)
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body text-center">
                        <img src={{$record->poster}} class="card-img-top" height="500px" width="50px">
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                    <hr>
                      <iframe width="560" height="315" src="https://www.youtube.com/embed/rlFm8gTuNB8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                      <hr>
                      <p class="text-success">{{$record->film_name}}</p>
                      <hr>
                      <p>{{$record->synopsis_long}}</p>
                      <hr>
                      @foreach ($date as $record)
                         <p>{{ date('D, d-m-Y',strtotime($record->tgl_tayang)) }}</p> 
                      <ul class="list-inline">
                      @foreach ($time as $record)
                        <form action={{route('seat')}} method="POST">
                        {{ csrf_field() }}
                        <input type="text" value={{$record->kd_jadwal}} hidden name="kd_jadwal">
                          <li class="list-inline-item"><button href="" class="btn btn-secondary"> {{substr($record->jam_mulai,0,5)}}</li>
                        </form>
                      @endforeach
                      </ul>
                      @endforeach
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
@endsection()


