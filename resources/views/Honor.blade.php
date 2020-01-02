@extends('layouts.app')

@section('content')
<html>
 
  <head>
     <title>Student Management | Add</title>
  </head>
  
  <body>

<div class="container">
  
 
     </form>

     <form action = "/insertForm" method = "POST">
       <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
  <div class="form-group">

    <label for="exampleInputEmail1">Что-то</label>
    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name='name'>
    <small id="emailHelp" class="form-text text-muted">введите еще что-то (можно не вводить)</small>
  <br>

  <label for="exampleInputEmail1">Название статьи</label>
    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name='email'>
    <small id="emailHelp" class="form-text text-muted">введите название статьи</small>
  <br>

  <label for="exampleInputEmail1">Текст статьи</label>
    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name='text'>
    <small id="emailHelp" class="form-text text-muted">введите текст</small>
  </div>

  <label for="exampleInputEmail1">Категория статьи (вводить id-шник: 1; 2; 3; 4; 5; 6.)</label>
    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter categorie" name='categorie_id'>
    <small id="emailHelp" class="form-text text-muted">введите категорию</small>


  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                          
</div>
                         
  
  </body>
</html>

@endsection