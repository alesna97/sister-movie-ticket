@extends('layout.master')

@section('title')
    Now Showing
@endsection()

@section('content')
    <div class="container">
    <br>
        <h3>Now Showing {{$date}}</h3>
        <hr>
        <div class="row">
        @foreach ($movies as $movie)
            <div class="col" style="margin:5px">
                <div class="card" style="width:225px">
                    <img src={{$movie->poster}} class="card-img-top" alt="card image">
                    <div class="card-body">
                     <h6 class="small">{{$movie->film_name}}</h6>
                     <p class="card-text"> </p>
                     <form action={{route('order')}} method="POST">
                     {{ csrf_field() }}
                     <input type="text" value={{$movie->film_id}} name="film_id" hidden>
                     <button class="btn btn-outline-success btn-sm"> <i class="fa fa-ticket"></i> Buy Ticket</button>
                     </form>
                    </div>
                </div>
            </div>
       @endforeach
        </div>
    </div>
@endsection()
