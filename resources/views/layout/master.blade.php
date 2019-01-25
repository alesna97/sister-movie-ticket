<!DOCTYPE html>
<html>
  <head>
    <title>@yield('title' , 'Movie Ticket')</title>
    @include('layout.head')
  </head>
  <body>
    <div class="container" style="margin-top:80px">
    @include('layout.header')
    
    @yield('content')
    
    </div>
    @include('layout.footer')
    @include('layout.script')
    @stack('script')
  </body>
</html>