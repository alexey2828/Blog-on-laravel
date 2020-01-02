<!DOCTYPE html>
<html>
<head>
  <title></title>
      <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
  <br><br>
  <center><h1>All users</h1></center>
  <br><br>
  <div class="container">
    <div class="scroll_block"> 
      @foreach ($users as $user) 
        <a href="{{ route('usersShow', ['id'=>$user->id]) }}" class="btn1 btn-8 btn-8c">View</a>
        {{ $user->id }}
        <img src=' {{asset("images/".$user->avatar)}}' width="40" height="40" style="border-radius: 50%;">
        {{ $user->name }}
        {{ $user->role_id }}<br>
        
  
      @endforeach
    </div>
    <br>
    <center><a href="{{ url('/home') }}">back to home</a></center>
</div>
</body>
</html>


        
   
     
      