



@if (Route::has('login'))
@auth

@if (Auth::user()->role_id == 1)
<div class="admin_block">
    <h4>Admin<img src="http://127.0.0.1:8000/images/1577738615_flame.png" width="30" height="30"></h4>
</div>
<style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Anton|Fjalla+One|Squada+One&display=swap');
    h4 {
        margin-left: 17%;
    }
    .admin_block {
        margin-top: 75px;
        width: 100%;
        height: 40px;
        background: linear-gradient(45deg, magenta, #1c1d93);
        position: fixed;
        z-index: 10;
        color: white;
        font-family: 'Squada One', cursive;
    }
</style>
@endif


<!DOCTYPE html>
<html>
<head>
    <title>lib laravel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
    <link rel="stylesheet" href="http://bootstraptema.ru/plugins/font-awesome/4-4-0/font-awesome.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    
</head>
<body>
    

<style>

</style>

 <div id="wrapper">
 <div class="overlay"></div>
 
 <!-- Sidebar -->
 <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
 <ul class="nav sidebar-nav">
 <li class="sidebar-brand">
 <a href="#">
HONOR
 </a>
 </li>
  <li>
 <a href="{{ url('/home') }}">Home</a>
 </li>
 <li>
 <a href="{{ url('/welcome') }}">Articles</a>
 </li>
 <li>
 <a href="#">Sicials</a>
 </li>
 <li>
 <a href="#">Other</a>
 </li>
 <h3 id="CategorTitile">CATEGORIES</h3>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>1]) }}">categorie 1</a>
 </li>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>2]) }}">categorie 2</a>
 </li>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>3]) }}">categorie 3</a>
 </li>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>4]) }}">categorie 4</a>
 </li>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>5]) }}">categorie 5</a>
 </li>
 <li>
 <a href="{{ route('categorie_idShow', ['categorie_id'=>6]) }}">categorie 6</a>
 </li>

 </ul>
 </nav>
 <!-- /#sidebar-wrapper -->



 <!-- Page Content -->
<div id="page-content-wrapper">

            <div class="sidebar_btn">
                <button type="button" class="hamburger is-closed"   data-toggle="offcanvas">
                <span class="hamb-top"></span>
                <span class="hamb-middle"></span>
                <span class="hamb-bottom"></span>
                </button>
        
            <div class="Search">
                <div class="search_m">
                    <form action = "/search_result" method = "POST">
                       <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                        <div class="box">
                            <div class="container-1">
                                <span class="icon"><i class="fa fa-search"></i></span>
                                <input id="search" type='text' placeholder="Search..." name='id'>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            </div>
            <div class="reg">
              @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                    <div>
                       <img id="avatar" src='{{asset("images/".Auth::user()->avatar)}}' width="30" height="30" style="margin-top: 0px; border-radius: 50%;">
                        <a class="mgname" id="sing" href="{{ url('/home') }}">{{ Auth::user()->name }}</a>
                      </div>
                    @else
                        <a id="sing" href="{{ route('login') }}">Sign in</a>

                        @if (Route::has('register'))
                            <a id="sing" href="{{ route('register') }}">Sign up</a>
                        @endif
                    @endauth
                </div>
            @endif
      </div>


 </div>
 <div class="container">

    <style>

</style>
<br>
<br>
<br><br>
                
@if (Auth::user()->role_id == 1) <!-- роль мользователся 1 - админ; 0 - авторизованный юзер-->
  <div class="user_info">
    <div class="profile_main">
    <div class="imgProfile"><br> 
        @if(Auth::user())
          <img id="avatar" src='{{asset("images/".Auth::user()->avatar)}}' width="100" height="100">
         @endif
        <div id="names">{{ Auth::user()->name }} <br> @if (Auth::user()->role_id == 1)
        <br> 
            <img id="icons" title="администрация" src="https://cdn.discordapp.com/attachments/497433271567908874/653248583465828362/avatar-11.png" width="20" height="20"><img id="icons" title="v.i.p." src="https://avatanplus.com/files/resources/mid/569e0149093671525935054e.png" width="20" height="20"><img id="icons" title="редакция" src="https://cdn.discordapp.com/attachments/497433271567908874/653248797761208341/avatar-13.png" width="20" height="20">
            @endif</div><br>Ваша почта: {{ Auth::user()->email }}<br></div>  

                <a href="{{ url('/logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                    Выйти из учётной записи
                </a>

                    <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>


                    <form method="post" action="{{ route('upload_avatars') }}" enctype="multipart/form-data">
                       <input name="_token" type="hidden" value="{{ csrf_token() }}">
                       <label for="exampleInputEmail1">загрузить новый аватар:</label>
                       <input type="file" multiple name="file[]" required><br>
                       <button type="submit" class="btn btn-success">Publish</button>
                    </form>
    </div>
  </div>

    <center><h1>Edit articles</h1></center>
    <br>
    <div class="container">
    <div class="scroll_block"> 
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Изображение</th>
          <th scope="col">Заголовок статьи</th>
          <th scope="col">ID</th>
          <th scope="col">Категория</th>
          <th scope="col">Cсылка на статью</th>
          <th scope="col">Удалить статью</th>
        </tr>
      </thead>
      @foreach ($tasks as $task) 
      <tbody>
        <tr>
          <th scope="row">{{ $task->id }}</th>
          <td><img src=' {{asset("images/".$task->image)}}' width="50" height="30"></td>
          <td>{{ $task->title }}</td>
          <td>{{ $task->id }}</td>
          <td>Категория №{{ $task->categorie_id }}</td>
          <td><a href="{{ route('tasksShow', ['id'=>$task->id]) }}" class="btn1 btn-8 btn-8c">View</a></td>
          <td><a class="btn btn-danger" href = 'delete/{{ $task->id }}'>Delete</a></td>
        </tr>
      </tbody>
       @endforeach 
        
    </table>
    </div> 
  

       
    </div>
    </div>
    </div> 
     </div>
     </div>
     <!-- /#page-content-wrapper -->
    
     </div>
     <!-- /#wrapper -->
    
    
    
    
    <div class="container">
    <center><h1>Add articles</h1></center>
        <div class="add_article">
            <form method="post" action="{{ route('upload_file') }}" enctype="multipart/form-data">
                <input name="_token" type="hidden" value="{{ csrf_token() }}">
                <label for="exampleInputEmail1">Выберите картинку для статьи</label>
                <input type="file" multiple name="file[]" required><br>
                
                <div class="form-group">
    
                    <label for="exampleInputEmail1">Bведите имя</label>
                    <input type='text' class="form-control" id="exampleInputEmail1" placeholder="Enter name" name='           name' required>
                    <small id="emailHelp" class="form-text text-muted">введите еще что-то (можно не вводить)</small>
                  <br>
                
                  <label for="exampleInputEmail1">Название статьи</label>
                    <input type='text' class="form-control" id="exampleInputEmail1"  placeholder="Enter title" name=            'email' required>
                    <small id="emailHelp" class="form-text text-muted">введите название статьи</small>
                  <br>
                
                  <label for="exampleInputEmail1">Текст статьи</label>
                    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"            placeholder="Enter text" name='text' required>
                    <small id="emailHelp" class="form-text text-muted">введите текст</small>
                  </div>

                
                 
                <label for="exampleInputEmail1">выберете категорию</label>
                    <select name="categorie_id" class="custom-select">
                        <option selected>категория</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>
            
            
                            <br><br>
         <button type="submit" class="btn btn-success">Publish</button>
      </form>
    </div>
    <center><h1>All users</h1>
  <div class="all_users">
      <a href="{{ url('/users') }}">view</a>
    </center>
  </div>           
  </div>


<!--  заметка для выбора категории статьи с выпадающими кнопками
<form>
  <select name="cars" class="custom-select">
    <option selected>Custom Select Menu</option>
    <option value="volvo">Volvo</option>
    <option value="fiat">Fiat</option>
    <option value="audi">Audi</option>
  </select>
</form>
-->


    

    @else
    <br>
        <div class="imgProfile"><br> 
       <img id="avatar" src='{{asset("images/".Auth::user()->avatar)}}' width="50%" height="15%"><br>
       
                    <form method="post" action="{{ route('upload_avatars') }}" enctype="multipart/form-data">
                       <input name="_token" type="hidden" value="{{ csrf_token() }}">
                       <label for="exampleInputEmail1">загрузить новый аватар:</label>
                       <input type="file" multiple name="file[]" required><br>
                       <button type="submit" class="btn btn-success">Publish</button>
                    </form>
                    Ван ник: {{ Auth::user()->name }}<br>
                    Вана почта: {{ Auth::user()->email }}<br>
                    <a href="{{ url('/logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                    Выйти из учётной записи
                </a>

                    <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                    <br>
            @if (Auth::user()->role_id == 0)
                <img src="https://cdn.discordapp.com/attachments/497433271567908874/653248583465828362/avatar-11.png" width="20" height="20">
            @endif
    
@endif


<style type="text/css">

</style>

<!--<input type="button" value="Hello!" name="hello" OnClick="a();">-->

<div id="info"></div>



<script>
    $(document).ready(function () {
     var trigger = $('.hamburger'),
     overlay = $('.overlay'),
     isClosed = false;
    
     trigger.click(function () {
     hamburger_cross(); 
     });
    
     function hamburger_cross() {
    
        if (isClosed == true) { 
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
        } else { 
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
        }
     }
     
     $('[data-toggle="offcanvas"]').click(function () {
     $('#wrapper').toggleClass('toggled');
     }); 
    });
</script>

                                                                                                                                                                                                                                                                                                                                                                                




      <!-- Grid row-->
<br><br><br><br><br>
    </div>
  </div>
   
            
  <!-- Footer Links -->
  <div class="container text-center text-md-left mt-5">

    <!-- Grid row -->
    <div class="row mt-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

        <!-- Content -->
        <h6 class="text-uppercase font-weight-bold">Company name</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
          consectetur
          adipisicing elit.</p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Products</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">MDBootstrap</a>
        </p>
        <p>
          <a href="#!">MDWordPress</a>
        </p>
        <p>
          <a href="#!">BrandFlow</a>
        </p>
        <p>
          <a href="#!">Bootstrap Angular</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Useful links</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a href="#!">Your Account</a>
        </p>
        <p>
          <a href="#!">Become an Affiliate</a>
        </p>
        <p>
          <a href="#!">Shipping Rates</a>
        </p>
        <p>
          <a href="#!">Help</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Contact</h6>
        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <i class="fas fa-home mr-3"></i> New York, NY 10012, US</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> info@example.com</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
        <p>
          <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
</body>
</html>




@else


и тут должна быть форма для не зареганного юзера, но по скольку мне лень ловите ссылку и зарегайтес...<br>
@if (Route::has('register'))
                            <a id="sing" href="{{ route('register') }}">Sign up</a>
                        @endif
                        или логиньтес 
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            
@endauth
@endif