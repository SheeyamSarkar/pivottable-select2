<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;

use Illuminate\Support\Facades\Validator;

class ForgotPasswordController extends Controller
{
    public function showForgetPasswordForm() {
        return view('admin.forgot_password');
    }
    public function submitForgetPasswordForm(Request $request) {
        // $request->validate([
        //     'email' => 'required|email|exists:users',
        // ]);
         $validator = Validator::make($request->all(), [
            'email'                 =>'required|email|exists:users',

        ]);
        if ($validator->fails()) {
           
            // $data['error'] = $validator->errors()->all();
            // dd($data);
            Session::flash('message', 'Somthing went wrong!Try again.');
            Session::flash('alert-type', 'error');
            return back();
        }

        $token = Str::random(64);

        DB::table('password_resets')->insert([
            'email'      => $request->email,
            'token'      => $token,
            'created_at' => Carbon::now(),
        ]);

        Mail::send('password_reset_mail', ['token' => $token], function ($message) use ($request) {
            $message->to($request->email);
            $message->subject('Reset Password');
        });
        
        return view('admin.forgot_password1',compact('token'));
    }
    public function resendEmail(Request $request ,$token){
        // dd($token);
       $email= DB::table('password_resets')->where('token',$token)->first();
       // dd($email->email);
       Mail::send('password_reset_mail', ['token' => $token], function ($message) use ($email) {
            $message->to($email->email);
            $message->subject('Reset Password');
        });
        return view('admin.forgot_password1',compact('token'));
    }


    public function showResetPasswordForm($token) {
        return view('admin.recover_password', ['token' => $token]);
    }


    public function submitResetPasswordForm(Request $request) {
        // dd($request->all());
        $request->validate([
            
            'password'              => 'required|string|min:6|confirmed',
            'password_confirmation' => 'required',
        ]);
        $email= DB::table('password_resets')->where('token',$request->token)->first();
        $updatePassword = DB::table('password_resets')
            ->where([
                'email' => $email->email,
                'token' => $request->token,
            ])
            ->first();

        if (!$updatePassword) {
            return back()->withInput()->with('error', 'Invalid token!');
        }

        $user = User::where('email', $request->email)
            ->update(['password' => Hash::make($request->password)]);

        DB::table('password_resets')->where(['token' => $request->token])->delete();

        Session::flash('message', 'Your password changed successfully!');
        Session::flash('alert-type', 'success');
        return redirect()->route('login');
    }
}
