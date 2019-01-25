<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="#">Almanac Cinema</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href={{route('home-page')}}>Home </a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href={{route('nowshowing')}}>Now Showing</a>
      </li>
      <li clas="nav-item">
        <a class="nav-link" href="#">Coming Soon</a>
      </li>
      <li clas="nav-item">
        <a class="nav-link" href="#">Book My Tickets</a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"> Search </button>
      <a href={{route('logout')}} class="btn btn-outline-secondary my-2 my-sm-0"> Log out </a>
    </form>
  </div>
</nav>