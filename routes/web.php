<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome','IndexController@welcome');

//Route::get('/welcome', function () {
//	$tasks = DB::table('tasks')->get();
//	//str_limit('The PHP framework for web artisans.', 7);
//	//$tasks = App\Task::all()
//    return view('/welcome', compact('tasks'));
//
//});

Route::get('/tasks', function () {
	$tasks = DB::table('tasks')->get();
	//$tasks = App\Task::all()
    return view('/tasks', compact('tasks'));
});




//Route::get('/', function () {
//	$tasks = DB::table('tasks')->get();
//    return view('/home', compact('tasks'));
//});

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');


Route::get('/home', function () {
	$tasks = DB::table('tasks')->get();
    return view('/home', compact('tasks'));
});


Route::get('/role_user','Controller@role_user');



//slug

Route::get('task/{id}', 'IndexController@show')->name('tasksShow');

//more routes

Route::get('/Xiaomi', 'IndexController@Xiaomi')->name('Xiaomi');
Route::get('/Meizu', 'IndexController@Meizu')->name('Meizu');



Route::redirect('/', '/welcome');

//pagination

Route::get('/Honor', function () {
	$tasks = DB::table('tasks')->paginate(8);
    return view('/Honor', compact('tasks'));
});
Route::post('/insertForm','Controller@insert');

//insert

//Route::post('/Honor','Controller@insert');
Route::post('/home','Controller@insertHome');
//Route::redirect('/insertForm', '/welcome');

//search

Route::post('/search_result','Controller@searchPost');
Route::post('/home','Controller@searchPost');


//delete

Route::get('delete/{id}','Controller@deletePost');
	
//categories

Route::get('task/categorie/{categorie_id}', 'IndexController@categorie_id')->name('categorie_idShow');

//upload files

Route::get('/insertForm',['as' => 'upload_form', 'uses' => 'UploadController@getForm']);
Route::post('/insertForm',['as' => 'upload_file','uses' => 'UploadController@upload']);

//проверка статьи 

//Route::get('insert/{id}','IndexController@verified_post');

//upload avatar

Route::get('/ff', ['as' => 'upload_avatar', 'uses' => 'UploadController@getFormAvatr']);
Route::post('/ff',['as' => 'upload_avatars','uses' => 'UploadController@uploadAvatar']);

//
Route::get('/users', function () {
	$users = DB::table('users')->get();
    return view('/users', compact('users'));
});

Route::get('user/{id}', 'IndexController@usershow')->name('usersShow');