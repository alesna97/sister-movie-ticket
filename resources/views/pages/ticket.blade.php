<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>CSS seat booking</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

    <link href="{{ asset('css/style.css')}}" rel="stylesheet">
    <link href="{{ asset('css/app.css')}}" rel="stylesheet">
 
</head>

<body>
    
    <div class="container">

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



    </div>
  
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>
