<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App;
use App\Task;
use App\Users;
use Carbon\Carbon;

class IndexController extends Controller
{
//-------------------------чпу / страничный вывод статей / ----------------//
public function show($id)
{
	

	$task = task::select(['id', 'title', 'text', 'image'])->where('id', $id)->first();

		//dump($task);
	return view('taskcontent', compact('task'));
}


public function usershow($id)
{
	
	$user = DB::table('users')->select(['id', 'name', 'role_id', 'avatar'])->where('id', $id)->first();
	

		//dump($task);
	return view('usersShow', compact('user'));
}

//проверка статьи
//public function verified_post ($id) {
//  	 
//	 DB::table('insert into verified_post (id, title, text, image) select id, title, text, image from tasks',[$id]//);
//	 echo "Record deleted successfully.<br/>";
//     echo '<a href="/welcome">Click Here</a> to go back.';
//     
//  }


//categories

public function categorie_id($categorie_id)
{
	
	$mytime = Carbon::now();
	$tasks = task::select(['id', 'title', 'text', 'image'])->where('categorie_id', $categorie_id)->get();

		//dump($task);
	return view('categorie_id', compact('tasks'));
}

public function welcome()
{
	$mytime = Carbon::now();
	$tasks = task::select(['id', 'title', 'text', 'image'])->paginate(9);
	return view('/welcome', compact('tasks'));
}




//public function home()
//{
//	$users = DB::table('users')->select(['id', 'name', 'avatar', 'role_id']);
//	return view('/home', compact('users'));
//
//}









public function Xiaomi()
{
	

	$task = task::select(['id', 'title', 'text']);

		//dump($task);
	return view('Xiaomi', compact('task'));
}

public function Meizu()
{
	

	$task = task::select(['id', 'title', 'text']);

		//dump($task);
	return view('Meizu', compact('task'));
}


}

