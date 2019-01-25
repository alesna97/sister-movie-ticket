@extends('layout.master')
@section('content')

    <h2> Pilih Tempat Duduk</h2>

    <div>
        <ol class="seats">
            <li class="seat"> 
                <input type="checkbox" id="A1" checked onclick="return false;"/>
                <label for="A1">A1</label>
            </li>

            <li class="seat"> 
                <input type="checkbox" id="A2"/>
                <label for="A2">A2</label>
            </li>

            <li class="seat"> 
                <input type="checkbox" id="A3"/>
                <label for="A3">A3</label>
            </li>
        </ol>

        <ol class="seats">
            <li class="seat"> 
                <input type="checkbox" id="B1"/>
                <label for="B1">B1</label>
            </li>
        </ol>
    </div>

@endsection
