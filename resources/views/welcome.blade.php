@extends('layout.master')

@section('title')
    Almanac Cinema
@endsection()

@section('content')
@include('carousel')
<hr>
    <div class="container">
    <div class="card">
     <div class="card-header bg-dark text-light">
        <h5> Now Playing </h5>
     </div>
      <div class="card-body">
        <a class="text-right nav-link text-secondary" href="#"> See all movies <i class="fa fa-arrow-right"></i> </a>
      <div class="row">
        @foreach ($posters as $poster)
        <div class="col">
            <div class="card">
             <div class="card-body"><img src={{$poster->poster}}></div>
              <div class="card-footer"><button class="btn btn-success btn-block"><i class="fa fa-ticket"></i> Buy Ticket </button></div>
            </div>
        </div>
        @endforeach
        </div>
      </div>
    </div>
    <br>
    </div>
    <div class="bg-dark text-light">
        <div style="margin:80px">
            <hr>
            <h1>Upcoming Movie</h1>
            <hr>
            @include('gallery')
        </div>
    </div>
@endsection()
