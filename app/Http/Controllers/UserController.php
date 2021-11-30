<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;


class UserController extends Controller
{
public function users(){
	$users=User::where('is_super_admin','!=',1)->get();
	return view('admin.user_management.users',compact('users'));
}
public function userStore(Request $request){
	 $validator = Validator::make($request->all(), [
            'name'        => 'required|max:50',
            'email'       => 'required|max:50|email|unique:users',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

        $token = Str::random(30);
      
        $user = User::create([
                'name'        => $request->name,
                'email'       => $request->email,
                'token'       => $token,
                'password'    => Hash::make(Str::random(10)),
                'is_admin'    => $request->admin??0,
            ]);

             // send email
        // Mail::to($request->email)->send(new UserInvitation($invite));
        Mail::send('password_mail', ['token' => $token,'name'=>$request->name, 'email' => $request->email], function ($message) use ($request) {
                $message->to($request->email);
                $message->subject('Register your free account');
            });

         $data                = array();
            $data['message']     = $user->is_admin==1?'Admin added successfully':'User added successfully';
            $data['name']        = $user->name;
            $data['email']       = $user->email;
            if ($user->is_admin==1) {
                 $data['role']       ='Admin';
            }
             else{
                $data['role']       ='User';
             }
            // $data['role']       = $user->is_admin==1?'Admin':'User';
            $data['is_verified']       = $user->is_verified==1?'Registered':'Unregistered';
            $data['id']          = $user->id;
            $data['super_admin']          = Auth::user()->is_super_admin;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
             // $data['message']='User added successfully!';
             // return response()->json([
             //   'success'=>true,
             //   'data'=>$data
             // ]);
         }
}


  public function registerNewUser($token){
        // dd($token);
        $user=User::where('token',$token)->first();
        // dd($user);
        if ($user->is_verified==0) {
           return view('admin.register',compact('user'));
        }else{
            abort();
        }
    }

    public function userSignUp(Request $request){
        // dd($request->all());
        $user  = User::where('email',$request->email)->first();
        // dd($user);
        $validator = Validator::make($request->all(), [
            'name'        => 'required|max:50',
            'email'       => 'required|max:50|email|unique:users,email,' . $user->id,
            'contact'       => 'required|max:50',
            'gender'       => 'required|max:50',
            'password'              => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required',
            'image'       => 'nullable|max:600|mimes:jpg,png,jpeg|dimensions:width=200px,height=200px',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return back()->withErrors($data);
        } else {

            
            $profile_image = $request->image;
            
            if ($profile_image) {
                $profile_image_name = hexdec(uniqid());
                $profile_image_ext  = strtolower($profile_image->getClientOriginalExtension());

                $profile_image_image_full_name = $profile_image_name . '.' . $profile_image_ext;
                $profile_image_upload_path     = 'avatar/';
                $profile_image_upload_path1    = 'backend/avatar';
                $profile_image_image_url       = $profile_image_upload_path . $profile_image_image_full_name;
                $success                       = $profile_image->move($profile_image_upload_path1, $profile_image_image_full_name);
                // $img = Image::make($image)->resize(680, 437);
                // $img->save($upload_path1 . $image_full_name, 60);
            }
            $user->update([
                'name'        => $request->name,
                'contact'       => $request->phone,
                'gender'       => $request->gender,
                'password'       => Hash::make($request->password),
                'token'       => null,
                'photo'       => $profile_image_image_url,
                'is_verified'    => 1,
            ]);
            

            if($user){
                 Auth::login($user);
                 return redirect()->route('dashboard');
            }
        }
    }

    public function changeAdminStatus(Request $request){
    	// dd($request->all());
    	  
      
            if ($request->value==1) {
		      $user    = User::find($request->id);
		       $user['is_admin'] = 1;
		        $user->update();

		    $data                = array();
            $data['message']     = 'Status changed successfully'; 
            $data['role']       = $user->is_admin==1?'Admin':'User';         
            $data['id']          = $user->id;
           

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
		      }
		      else{
		      	
		        $user    = User::find($request->id);
		         $user['is_admin'] = 0;
		          $user->update();
			    $data                = array();
		        $data['message']     = 'Status changed successfully'; 
		        $data['role']       = $user->is_admin==1?'Admin':'User';         
		        $data['id']          = $user->id;
		      }
		     return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
       
    }



public function userEdit(Request $request){
        $data = User::find($request->id);
            if ($data) {
                return response()->json([
                    'success' => true,
                    'data'    => $data,
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'data'    => 'No information found',
                ]);
            }
}
public function userUpdate(Request $request){
        $user  = User::find($request->hidden_id);
        $validator = Validator::make($request->all(), [
            'name'        => 'required|max:50',
            'email'       => 'required|max:50|email|unique:users,email,' . $user->id,
            'contact'       => 'required|max:50',
            'gender'       => 'required',
            'image'       => 'nullable|max:600|mimes:jpg,png,jpeg|dimensions:width=200px,height=200px',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

            
            $profile_image = $request->image;
           
            if ($profile_image) {
                File::delete('backend/' . $user->photo);
                $profile_image_name = hexdec(uniqid());
                $profile_image_ext  = strtolower($profile_image->getClientOriginalExtension());

                $profile_image_image_full_name = $profile_image_name . '.' . $profile_image_ext;
                $profile_image_upload_path     = 'avatar/';
                $profile_image_upload_path1    = 'backend/avatar';
                $profile_image_image_url       = $profile_image_upload_path . $profile_image_image_full_name;
                $success                       = $profile_image->move($profile_image_upload_path1, $profile_image_image_full_name);
                // $img = Image::make($image)->resize(680, 437);
                // $img->save($upload_path1 . $image_full_name, 60);
            } else {
                $profile_image_image_url = $user->photo;
            }
            // $user->update([
            //     'name'        => $request->name,
            //     'email'       => $request->email,
            //     'phone'       => $request->phone,
            //     'image'       => $profile_image_image_url,
            //     'is_admin'    => $request->is_admin??0,
            // ]); 
            $user->update([
                'name'        => $request->name,
                'contact'       => $request->contact,
                'gender'       => $request->gender,
                'photo'       => $profile_image_image_url,
                'is_admin'    => $request->admin??0,
            ]);
            

            $data                = array();
            
            $data['message']     = $user->is_admin==1?'Admin info updated successfully':'User info updated successfully';
            // $data['image']        = $user->image;
            $data['name']        = $user->name;
            $data['email']       = $user->email;
            // $data['phone']       = $user->phone;
             if ($user->is_admin==1) {
                 $data['role']       ='Admin';

            }else{
                $data['role']       ='User';
            }
          
            // $data['role']       = $user->is_admin==1?'Admin':'User';
            $data['is_verified']       = $user->is_verified==1?'Registered':'Unregistered';
            $data['id']          = $user->id;
            $data['is_super_admin']  = Auth::user()->is_super_admin;
            

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
        
}
public function userDelete(Request $request){
     $user = User::find($request->id);
        if ($user->id == auth()->user()->id) {
            return response()->json([
                'message' => 'You can not delete your own data',
            ]);
        }  else {
            $user->delete();
            File::delete('backend/' . $user->photo);
            $data['message'] = 'Data deleted successfully';
            $data['id']      = $request->id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
}
public function superAdmin(){
        if (auth::check()) {
            $users = User::where('is_verified',1)->orderBy('id','DESC')->get();
        return view('admin.make_super_admin',compact('users'));
        }
        else{
          return redirect()->route('login')->withErrors(['Sorry, you should login first.']);
        }
    }

    public function makeSuperAdmin(Request $request){
        // dd($request->all());
          
      
            if ($request->value==1) {
              $user    = User::find($request->id);
               $user['is_super_admin'] = 1;
                $user->update();

            $data                = array();
            $data['message']     = 'Add super admin successfully';       
            $data['id']          = $user->id;
           

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
              }
              else{
                
                $user    = User::find($request->id);
                 $user['is_super_admin'] = 0;
                  $user->update();
                $data                = array();
                $data['message']     = 'Removed from super admin successfully'; 
               
              }
             return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
       
    }

public function admins(Request $request){
    $users=User::where('is_super_admin','!=',1)->where('is_admin','=',1)->get();
    return view('admin.user_management.admin',compact('users'));
    }
public function adminStore(Request $request){
    $validator = Validator::make($request->all(), [
            'name'        => 'required|max:50',
            'email'       => 'required|max:50|email|unique:users',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

        $token = Str::random(30);
      
        $user = User::create([
                'name'        => $request->name,
                'email'       => $request->email,
                'token'       => $token,
                'password'    => Hash::make(Str::random(10)),
                'is_admin'    => 1,
            ]);

             // send email
        // Mail::to($request->email)->send(new UserInvitation($invite));
        Mail::send('password_mail', ['token' => $token,'name'=>$request->name, 'email' => $request->email], function ($message) use ($request) {
                $message->to($request->email);
                $message->subject('Register your free account');
            });

         $data                = array();
            $data['message']     = $user->is_admin==1?'Admin added successfully':'User added successfully';
            $data['name']        = $user->name;
            $data['email']       = $user->email;
            if ($user->is_admin==1) {
                 $data['role']       ='Admin';
            }
             else{
                $data['role']       ='User';
             }
            // $data['role']       = $user->is_admin==1?'Admin':'User';
            $data['is_verified']       = $user->is_verified==1?'Registered':'Unregistered';
            $data['id']          = $user->id;
            $data['super_admin']          = Auth::user()->is_super_admin;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
             // $data['message']='User added successfully!';
             // return response()->json([
             //   'success'=>true,
             //   'data'=>$data
             // ]);
         }

}
public function adminEdit(Request $request){
       $data = User::find($request->id);
            if ($data) {
                return response()->json([
                    'success' => true,
                    'data'    => $data,
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'data'    => 'No information found',
                ]);
            }
}
public function adminUpdate(Request $request){
     $user  = User::find($request->hidden_id);
        $validator = Validator::make($request->all(), [
            'name'        => 'required|max:50',
            'email'       => 'required|max:50|email|unique:users,email,' . $user->id,
            'contact'       => 'required|max:50',
            'gender'       => 'required',
            'image'       => 'nullable|max:600|mimes:jpg,png,jpeg|dimensions:width=200px,height=200px',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

            
            $profile_image = $request->image;
           
            if ($profile_image) {
                File::delete('backend/' . $user->photo);
                $profile_image_name = hexdec(uniqid());
                $profile_image_ext  = strtolower($profile_image->getClientOriginalExtension());

                $profile_image_image_full_name = $profile_image_name . '.' . $profile_image_ext;
                $profile_image_upload_path     = 'avatar/';
                $profile_image_upload_path1    = 'backend/avatar';
                $profile_image_image_url       = $profile_image_upload_path . $profile_image_image_full_name;
                $success                       = $profile_image->move($profile_image_upload_path1, $profile_image_image_full_name);
                // $img = Image::make($image)->resize(680, 437);
                // $img->save($upload_path1 . $image_full_name, 60);
            } else {
                $profile_image_image_url = $user->photo;
            }
            // $user->update([
            //     'name'        => $request->name,
            //     'email'       => $request->email,
            //     'phone'       => $request->phone,
            //     'image'       => $profile_image_image_url,
            //     'is_admin'    => $request->is_admin??0,
            // ]); 
            $user->update([
                'name'        => $request->name,
                'contact'       => $request->contact,
                'gender'       => $request->gender,
                'photo'       => $profile_image_image_url,
                'is_admin'    => 1,
            ]);
            

            $data                = array();
            
            $data['message']     = 'Admin info updated successfully';
            // $data['image']        = $user->image;
            $data['name']        = $user->name;
            $data['email']       = $user->email;
           
          
            // $data['role']       = $user->is_admin==1?'Admin':'User';
            $data['is_verified']       = $user->is_verified==1?'Registered':'Unregistered';
            $data['id']          = $user->id;
            $data['is_super_admin']  = Auth::user()->is_super_admin;
            

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }

}
public function adminDelete(Request $request){
    $user = User::find($request->id);
        if ($user->id == auth()->user()->id) {
            return response()->json([
                'message' => 'You can not delete your own data',
            ]);
        }  else {
            $user->delete();
            File::delete('backend/' . $user->photo);
            $data['message'] = 'Data deleted successfully';
            $data['id']      = $request->id;

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }
}
}
