<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WebSiteContent;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class SettingsController extends Controller
{
	public function appSettings(){
		$content=WebSiteContent::first();
        //dd($content);
		return view('admin.website_content.settings',compact('content'));

	}
	public function settingsStore(Request $request){
        // $content  = WebSiteContent::find($request->hidden_id);
        // $validator = Validator::make($request->all(), [
        //     'app_name'        => 'required|max:50',
        //     'image'       => 'required|max:600|mimes:jpg,png,jpeg,svg|dimensions:width=174px,height=33px',
        // ]);
        // if ($validator->fails()) {
        //     $data          = array();
        //     $data['error'] = $validator->errors()->all();
        //     return response()->json([
        //         'success' => false,
        //         'data'    => $data,
        //     ]);
        // } else {

            
        //     $logo = $request->logo;
           
        //     if ($logo) {
        //         // File::delete('backend/' . $content->logo);
        //         $logo_name = hexdec(uniqid());
        //         $logo_ext  = strtolower($logo->getClientOriginalExtension());

        //         $logo_image_full_name = $logo_name . '.' . $logo_ext;
        //         $logo_upload_path     = 'contents/';
        //         $logo_upload_path1    = 'backend/contents';
        //         $logo_image_url       = $logo_upload_path . $logo_image_full_name;
        //         $success                       = $logo->move($logo_upload_path1, $logo_image_full_name);
        //         // $img = Image::make($image)->resize(680, 437);
        //         // $img->save($upload_path1 . $image_full_name, 60);
        //     }
        //     //  else {
        //     //     $logo_image_url = $content->logo;
        //     // }
        //     // $content->update([
        //     //     'name'        => $request->name,
        //     //     'email'       => $request->email,
        //     //     'phone'       => $request->phone,
        //     //     'image'       => $logo_image_url,
        //     //     'is_admin'    => $request->is_admin??0,
        //     // ]); 
        //     $content=WebSiteContent::create([
        //         'app_name'        => $request->app_name,
        //         'logo'       => $logo_image_url,
        //     ]);
            

        //     $data                = array();
            
        //     $data['message']     = 'Conent inserted successfully';
        //     $data['app_name']        = $content->app_name;
        //     $data['logo']       = $content->logo;
        //     $data['id']       = $content->id;

           
          
            
            

        //     return response()->json([
        //         'success' => true,
        //         'data'    => $data,
        //     ]);
        // }


	}
	public function settingsEdit(Request $request){
		$data = WebSiteContent::find($request->id);
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
	public function settingsUpdate(Request $request){
		$content  = WebSiteContent::find($request->hidden_id);
        $validator = Validator::make($request->all(), [
            'app_name'       => 'required|max:50',
            'logo'           => 'nullable|max:600|mimes:jpg,png,jpeg,svg|dimensions:width=174px,height=33px',
            'fav_icon'       => 'nullable|max:600|mimes:jpg,png,jpeg,svg',
        ]);
        if ($validator->fails()) {
            $data          = array();
            $data['error'] = $validator->errors()->all();
            return response()->json([
                'success' => false,
                'data'    => $data,
            ]);
        } else {

            
            $logo = $request->logo;
           
            if ($logo) {
                File::delete('backend/' . $content->logo);
                $logo_name = hexdec(uniqid());
                $logo_ext  = strtolower($logo->getClientOriginalExtension());

                $logo_image_full_name = $logo_name . '.' . $logo_ext;
                $logo_upload_path     = 'contents/';
                $logo_upload_path1    = 'backend/contents';
                $logo_image_url       = $logo_upload_path . $logo_image_full_name;
                $success                       = $logo->move($logo_upload_path1, $logo_image_full_name);
            } else {
                $logo_image_url = $content->logo;
            }

            $fav_icon = $request->fav_icon;
            if ($fav_icon) {
                File::delete('backend/' . $content->fav_icon);
                $fav_name = hexdec(uniqid());
                $fav_ext  = strtolower($fav_icon->getClientOriginalExtension());

                $fav_image_full_name = $fav_name . '.' . $fav_ext;
                $fav_upload_path     = 'contents/';
                $fav_upload_path1    = 'backend/contents';
                $fav_image_url       = $fav_upload_path . $fav_image_full_name;
                $success                       = $fav_icon->move($fav_upload_path1, $fav_image_full_name);
            } else {
                $fav_image_url = $content->fav_icon;
            }
           
            $content->update([
                'app_name'        => $request->app_name,
                'logo'       => $logo_image_url,
                'fav_icon'       => $fav_image_url,
            ]);
            

            $data                = array();
            
            $data['message']     = 'Conent updated successfully';
            $data['app_name']        = $content->app_name;
            $data['logo']       = $content->logo;
            $data['fav_icon']       = $content->fav_icon;
            $data['id']       = $content->id;

           
          
            
            

            return response()->json([
                'success' => true,
                'data'    => $data,
            ]);
        }

	}
	public function settingsDelete(Request $request){

	}

	static function getContents(){
		return WebSiteContent::first();
	}
}
