<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;

class ProfileController extends Controller
{
    public function index(){
    	return view('admin.profile');
    }


    public function editProfile(){
    	return view('admin.edit_profile');
    }

    public function updateProfile(Request $request){
    	$user = Auth::user();
        $this->validate($request, [
            'name'        => 'required|max:100',
            'contact'       => 'required|max:20',
            'gender'       => 'required|max:20',
            'image'       => 'dimensions:width=200px,height=200px'

        ]);
        $image = $request->image;
        // dd($image);
        if ($image) {
            if ($user->photo != null) {
                File::delete('backend/' . $user->photo);
            }
            $image_name = hexdec(uniqid());
            $ext        = strtolower($image->getClientOriginalExtension());

            $image_full_name = $image_name . '.' . $ext;
            // dd($image_full_name);
            $upload_path     = 'avatar/';
            $upload_path1    = 'backend/avatar';
            $image_url       = $upload_path . $image_full_name;
            $success         = $image->move($upload_path1, $image_full_name);
            // $img = Image::make($image)->resize(680, 437);
            // $img->save($upload_path1 . $image_full_name, 60);

        } else {
            $image_url = $user->photo;
        }
        $user->update([
            'name'        => $request->name,
            'photo'       => $image_url,
            'contact'       => $request->contact,
            'gender'       => $request->gender,

        ]);
         Session::flash('message', 'Profile updated successfully!');
        Session::flash('alert-type', 'success');
        return redirect()->route('profile');
    }
}
