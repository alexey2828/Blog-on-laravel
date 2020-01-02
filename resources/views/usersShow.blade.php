
        {{ $user->id }}<br>
        <img src=' {{asset("images/".$user->avatar)}}' width="30%" height="50%"><br>
        Профиль пользователя:<h1>{{ $user->name }}</h1><br>
        {{ $user->role_id }}<br>
        <a href="{{ url('/home') }}">back to home</a><br>
        <a href="{{ url('/users') }}">back to users list</a>
  
