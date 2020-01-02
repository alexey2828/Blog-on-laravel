<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

function searchPost()
{
	$tasks = DB::table('tasks')->find(
   		['id' => $_POST['id'],
   	]
	);   	
	return view('/search_result', compact('tasks'));
}
//--------------------удаление статьи-------------------------
public function deletePost($id) {
  
     DB::delete('delete from tasks where id = ?',[$id]);
     echo "Record deleted successfully.<br/>";
     echo '<a href="/welcome">Click Here</a> to go back.';
  }
//------------------добавление статьи-------------------------
//// function insertHome()
////   {

//// $tasks = DB::table('tasks')->insert(
////     ['title' => $_POST['email'],
////     'img' => $_POST['name'],
////     'text' => $_POST['text'],
////     'categorie_id' => $_POST['categorie_id'],
////     
////     ]
//// );    
//// return view('/welcome', compact('tasks'));
//// 


////
//-------------------роли---------------------------------
function role_user()
{
$users = DB::table('users')->get();    
  return view('/role_user', compact('users'));
}

}


//-------------------users at home---------------------------

