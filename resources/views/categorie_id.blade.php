<!DOCTYPE html>
<html>
<head>
	<title>lib laravel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="http://bootstraptema.ru/plugins/font-awesome/4-4-0/font-awesome.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    
</head>
<body>
	

<style>
body {
 position: relative;
 overflow-x: hidden;
}
body,
html { height: 100%;}
.nav .open > a, 
.nav .open > a:hover, 
.nav .open > a:focus {background-color: transparent;}
/* Wrappers */
#wrapper {
 padding-left: 0;
 -webkit-transition: all 0.5s ease;
 -moz-transition: all 0.5s ease;
 -o-transition: all 0.5s ease;
 transition: all 0.5s ease;
}
#wrapper.toggled {
 padding-left: 220px;
}
#sidebar-wrapper {
 z-index: 1000;
 left: 220px;
 width: 0;
 height: 100%;
 margin-left: -220px;
 overflow-y: auto;
 overflow-x: hidden;
 background: #1a1a1a;
 -webkit-transition: all 0.5s ease;
 -moz-transition: all 0.5s ease;
 -o-transition: all 0.5s ease;
 transition: all 0.5s ease;
}
#sidebar-wrapper::-webkit-scrollbar {
 display: none;
}
#wrapper.toggled #sidebar-wrapper {
 width: 220px;
}
#page-content-wrapper {
 width: 100%;
 padding-top: 70px;
}
#wrapper.toggled #page-content-wrapper {
 position: absolute;
 margin-right: -220px;
}
/* Sidebar nav styles */
.sidebar-nav {
 position: absolute;
 top: 0;
 width: 220px;
 margin: 0;
 padding: 0;
 list-style: none;
}
.sidebar-nav li {
 position: relative; 
 line-height: 20px;
 display: inline-block;
 width: 100%;
}
.sidebar-nav li:before {
 content: '';
 position: absolute;
 top: 0;
 left: 0;
 z-index: -1;
 height: 100%;
 width: 3px;
 background-color: #1c1c1c;
 -webkit-transition: width .2s ease-in;
 -moz-transition: width .2s ease-in;
 -ms-transition: width .2s ease-in;
 transition: width .2s ease-in;

}
.sidebar-nav li:first-child a {
 color: #fff;
 background-color: #1a1a1a;
}
.sidebar-nav li:nth-child(2):before {
 background-color: #ec1b5a; 
}
.sidebar-nav li:nth-child(3):before {
 background-color: #79aefe; 
}
.sidebar-nav li:nth-child(4):before {
 background-color: #314190; 
}
.sidebar-nav li:nth-child(5):before {
 background-color: #279636; 
}
.sidebar-nav li:nth-child(6):before {
 background-color: #7d5d81; 
}
.sidebar-nav li:nth-child(7):before {
 background-color: #ead24c; 
}
.sidebar-nav li:nth-child(8):before {
 background-color: #2d2366; 
}
.sidebar-nav li:nth-child(9):before {
 background-color: #35acdf; 
}
.sidebar-nav li:nth-child(10):before {
 background-color: #7d5d81; 
}
.sidebar-nav li:nth-child(11):before {
 background-color: #d31a1a; 
}

.sidebar-nav li:nth-child(12):before {
 background-color: green; 
}
.sidebar-nav li:hover:before,
.sidebar-nav li.open:hover:before {
 width: 100%;
 -webkit-transition: width .2s ease-in;
 -moz-transition: width .2s ease-in;
 -ms-transition: width .2s ease-in;
 transition: width .2s ease-in;

}
.sidebar-nav li a {
 display: block;
 color: #ddd;
 text-decoration: none;
 padding: 10px 15px 10px 30px; 
}
.sidebar-nav li a:hover,
.sidebar-nav li a:active,
.sidebar-nav li a:focus,
.sidebar-nav li.open a:hover,
.sidebar-nav li.open a:active,
.sidebar-nav li.open a:focus{
 color: #fff;
 text-decoration: none;
 background-color: transparent;
}
.sidebar-nav > .sidebar-brand {
 height: 65px;
 font-size: 20px;
 line-height: 44px;
}
.sidebar-nav .dropdown-menu {
 position: relative;
 width: 100%;
 padding: 0;
 margin: 0;
 border-radius: 0;
 border: none;
 background-color: #222;
 box-shadow: none;
}
/* Hamburger-Cross */
.hamburger {
 position: fixed;
 top: 20px; 
 z-index: 999;
 display: block;
 width: 32px;
 height: 32px;
 margin-left: 15px;
 background: transparent;
 border: none;
}
.hamburger:hover,
.hamburger:focus,
.hamburger:active {
 outline: none;
}
.hamburger.is-closed:before {
 content: '';
 display: block;
 width: 100px;
 font-size: 14px;
 color: #fff;
 line-height: 32px;
 text-align: center;
 opacity: 0;
 -webkit-transform: translate3d(0,0,0);
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed:hover:before {
 opacity: 1;
 display: block;
 -webkit-transform: translate3d(-100px,0,0);
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed .hamb-top,
.hamburger.is-closed .hamb-middle,
.hamburger.is-closed .hamb-bottom,
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-middle,
.hamburger.is-open .hamb-bottom {
 position: absolute;
 left: 0;
 height: 4px;
 width: 100%;
}
.hamburger.is-closed .hamb-top,
.hamburger.is-closed .hamb-middle,
.hamburger.is-closed .hamb-bottom {
 background-color: #1a1a1a;
}
.hamburger.is-closed .hamb-top { 
 top: 5px; 
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed .hamb-middle {
 top: 50%;
 margin-top: -2px;
}
.hamburger.is-closed .hamb-bottom {
 bottom: 5px; 
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed:hover .hamb-top {
 top: 0;
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed:hover .hamb-bottom {
 bottom: 0;
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-middle,
.hamburger.is-open .hamb-bottom {
 background-color: #1a1a1a;
}
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-bottom {
 top: 50%;
 margin-top: -2px; 
}
.hamburger.is-open .hamb-top { 
 -webkit-transform: rotate(45deg);
 -webkit-transition: -webkit-transform .2s cubic-bezier(.73,1,.28,.08);
}
.hamburger.is-open .hamb-middle { display: none; }
.hamburger.is-open .hamb-bottom {
 -webkit-transform: rotate(-45deg);
 -webkit-transition: -webkit-transform .2s cubic-bezier(.73,1,.28,.08);
}
.hamburger.is-open:before {
 content: '';
 display: block;
 width: 100px;
 font-size: 14px;
 color: #fff;
 line-height: 32px;
 text-align: center;
 opacity: 0;
 -webkit-transform: translate3d(0,0,0);
 -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-open:hover:before {
 opacity: 1;
 display: block;
 -webkit-transform: translate3d(-100px,0,0);
 -webkit-transition: all .35s ease-in-out;
}
/* Overlay */
.overlay {
 position: fixed;
 display: none;
 width: 100%;
 height: 100%;
 top: 0;
 left: 0;
 right: 0;
 bottom: 0;
 background-color: rgba(250,250,250,.8);
 z-index: 1;
}
#CategorTitile {
  margin-left: 10%;
  color:white;
}
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
 				<button type="button" class="hamburger is-closed" 	data-toggle="offcanvas">
 				<span class="hamb-top"></span>
 				<span class="hamb-middle"></span>
 				<span class="hamb-bottom"></span>
 				</button>
		
 			<div class="Search">
 				<div class="search_m">
 					<form>
					<div class="box">
					  <div class="container-1">
					      <span class="icon"><i class="fa fa-search"></i></span>
					      <input type="search" id="search" placeholder="Search..." />
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
.search_m {
  width: 40%;
  margin-top: -60px;
  margin-left: 70%;
}

.container {
  position: relative;
}

#page-content-wrapper {
  background: white;
  position: fixed;
  z-index: 10;
  width: 100%
}

.reg {
  margin-left: 250px; 
  margin-top: 13px;
}

.btn2 {
  color: white;
  background: black;
  border: 5px solid black;
}

.sidebar_btn {
  width: 100%
  background: red;
}

#sing {
  margin-left: 10px;
}

.container-1{
  width: 300px;
  vertical-align: middle;
  white-space: nowrap;
  position: relative;
}

.container-1 input#search{
  width: 300px;
  height: 50px;
  background: white;
  border: none;
  border-bottom: 1px solid
  silver;
  font-size: 10pt;
  float: left;
  color: #63717f;
  padding-left: 45px;
}
.container-1 .icon{
  position: absolute;
  top: 50%;
  margin-left: 17px;
  margin-top: 17px;
  z-index: 1;
  color: #4f5b66;
}

@media only screen and (max-width: 780px) {

  .search_m {
    width: 50%;
    margin-left: 100px;
  }

  .reg {
    display: none;
  }

  .search_mobile {

  }
}





@font-face {
 font-family: 'Roboto';
 src: local('Roboto'), local('Roboto-Regular'), url('http://bootstraptema.ru/snippets/font/2016/roboto/roboto.woff2') format('woff2'), url('http://bootstraptema.ru/snippets/font/2016/roboto/roboto.woff') format('woff'), url('http://bootstraptema.ru/snippets/font/2016/roboto/roboto.ttf') format('truetype');
 font-weight: 400;
 font-style: normal;
}
.blog_box h3{
 font: 300 20px/25px Roboto, sans-serif; 
 text-transform:uppercase;
 margin-top:1em;
}
.blog_box h3 a{
 color:#000;
}
.blog_box h3 a:hover{
 color:#2cb149;
 text-decoration:none;
}
.blog_box p{
 font: 300 16px/25px Roboto, sans-serif; 
 color:#999;
 line-height:1.8em;
 margin-bottom: 2em;
}
.blog_box{
 margin-bottom: 2em;
}
.links{
 padding:0.5em 0;
}
.links ul{
 padding:0;
 list-style:none;
}
.links li{
 padding:0;
 list-style:none;
}
.links ul li {
 display: inline-block;
 margin-right: 20px;
 font: 300 16px/25px Roboto, sans-serif; 
 color:#999;
}
i.blog-icon{
 color:#2cb149;
 margin-right: 10px;
}

a.mask {
 text-decoration: none;
 overflow: hidden;
 display: block;
}
img.zoom-img:hover {
 -webkit-transform: scale(1.15);
 -webkit-transition-timing-function: ease-out;
 -webkit-transition-duration: 750ms;
 -moz-transform: scale(1.15);
 -moz-transition-timing-function: ease-out;
 -moz-transition-duration: 750ms;
 overflow: hidden;
}
img.zoom-img {
 -webkit-transform: scale(1, 1);
 -webkit-transition-timing-function: ease-out;
 -webkit-transition-duration: 250ms;
 -moz-transform: scale(1, 1);
 -moz-transition-timing-function: ease-out;
 -moz-transition-duration: 250ms;
}
.btn1 {
 width: 60px;
 border: none;
 font-family: inherit;
 font-size: inherit;
 font-weight: bold;
 color: white;
 background: none;
 cursor: pointer;
 padding: 20px;
 text-align:center;
 display: inline-block;
 margin: 15px 0 0;
 text-transform: uppercase;
 letter-spacing: 1px;
 outline: none;
 position: relative;
 -webkit-transition: all 0.3s;
 -moz-transition: all 0.3s;
 transition: all 0.3s;
 width: 32%;
}
.btn-8c:hover {
 -webkit-transform: rotateY(15deg);
 -moz-transform: rotateY(15deg);
 -ms-transform: rotateY(15deg);
 transform: rotateY(15deg);
 text-decoration:none;
 background:black;
 color:white;
}
.btn1:after {
 content: '';
 position: absolute;
 z-index: -1;
 -webkit-transition: all 0.3s;
 -moz-transition: all 0.3s;
 transition: all 0.3s;
}
.btn-8 {
 display: block;
 background:black;
 outline: 1px solid transparent;
 -webkit-transform-style: preserve-3d;
 -moz-transform-style: preserve-3d;
 transform-style: preserve-3d;
}
</style>
<br>
<br>
<br>
<br>
<div class="container"> 
<div class="row">
 @foreach ($tasks as $task) 
<div class="col-md-4 blog_box">
 <a href="#" class="mask">
<img src=' {{asset("images/".$task->image)}}' width="50%" height="50%">
</a>
 <h3><a href="single.html">{{ $task->title }} | {{ $task->id }}</a></h3>
 <div class="links">
 <ul>
 <li><i class="fa blog-icon fa-calendar"> </i><span>{{ date('Y m d H:i') }}</span></li>
 <li><i class="fa blog-icon fa-user"> </i><span>aTmpl</span></li>
 <li><i class="fa blog-icon fa-comment"> </i><a href="#"><span>Без комментариев</span></a></li>
 </ul>
 </div>
<p>{{ str_limit( $task->text, 100 ) }}</p>
 <a href="{{ route('tasksShow', ['id'=>$task->id]) }}" class="btn1 btn-8 btn-8c">View</a></div>
    @endforeach
    </div> </div>
</div>
</div>



 </div>
 </div>
 <!-- /#page-content-wrapper -->

 </div>
 <!-- /#wrapper -->

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
</body>
</html>