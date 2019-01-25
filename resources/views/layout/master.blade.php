<!DOCTYPE html>
<html>
  <head>
    <title>@yield('title' , 'Movie Ticket')</title>
    @include('layout.head')
  </head>
  <body style="margin-top:50px">
    @include('layout.header')
    
    @yield('content')
    
    @include('layout.footer')
    @include('layout.script')
    @stack('script')
  </body>
</html>