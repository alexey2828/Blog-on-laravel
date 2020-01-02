@extends('layouts.app')

@section('content')

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  
 
<div class="container">
	<form action = "/okno" method = "POST">
	       <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
	  <div class="form-group">
	
	    <label for="exampleInputEmail1">ID</label><br>
	    <input type='text' class="form-control" id="exampleInputEmail1" aria-describedby="	emailHelp" placeholder="Enter email" name='id'>
	    <small id="emailHelp" class="form-text text-muted">введите ID</small>
	  <br>
	  <input type="submit" class="btn btn-primary"></input>
	</form>
</div>
</body>
</html>

@endsection
