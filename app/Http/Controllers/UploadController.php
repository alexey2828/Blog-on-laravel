<?php
    namespace App\Http\Controllers;
    use Illuminate\Http\Request; 
    use Illuminate\Support\Facades\Storage;
    use DB;
    use Illuminate\Support\Facades\Auth;
    use Illuminate\Support\Facades\Validator;
    use Illuminate\Support\Facades\Gate;


    class UploadController extends Controller
    {
        public function getForm()
        {
            return view('upload-form');
        }

        public function upload(Request $request)
        {
            foreach ($request->file() as $file) {
                foreach ($file as $f) {
                  $f->move(public_path('images'), time().'_'.$f->getClientOriginalName());
                }
            }

            
         
            $tasks = DB::table('tasks')->insert(
   				[
   				  'image' => time().'_'.$f->getClientOriginalName(),
   				  'title' => $_POST['email'],
      			'img' => $_POST['name'],
      			'text' => $_POST['text'],
      			'categorie_id' => $_POST['categorie_id'],
   				]);   	
         

          return "Успех";
               //$name = $_FILES['file']['name'];
            //echo time().'_'.$f->getClientOriginalName();

            ////$name=$f->getClientOriginalName();
            ////echo $name;
            //$name = $_FILES['file']['name'];
			//нужно в переменную внести название файла в папке паблик, у меня название заносимого файла в бд = загружаемому пользов




            //$tmp_name = $_FILES['file']['tmp_name'];
            //
            //move_uploaded_file($tmp_name, '/public/images' . $name)

            //echo $name;


           	//echo('<img src="{{ asset("/storage/images/'.$name.'") }}">');

           
            
            //return view('upload', $name);


            	
        }

//-----------------------------------avatars-----------------------------

       public function getFormAvatr()
       {
           return view('upload-avatar');
       }

       public function uploadAvatar(Request $request)
       {
            $id = Auth::user()->id;

           foreach ($request->file() as $file) {
               foreach ($file as $f) {
                 $f->move(public_path('images'), time().'_'.$f->getClientOriginalName());
               }
           }

          \DB::table('users')->where('id', $id)->update(
         [
         'avatar' => time().'_'.$f->getClientOriginalName(),
         ]);     

         return "Успех";
       }
}


