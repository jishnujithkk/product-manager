<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignupRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
   
    public function signup(SignupRequest $request){
        $data = $request->validated();
       $user =  User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),

       ]);
       $tokenResult = $user->createToken('main');

    // Access token is the actual token string
    $accessToken = $tokenResult->accessToken;
    $token = $accessToken;
return response(compact('user','token'));



    }



    public function Login(LoginRequest $request){
        
            $credentials = $request->validated();
            if(!Auth::attempt($credentials)){
                return response([
                    'message' => 'Provided email or password is incorrect'
                ], 422);
}

$user = Auth::user();
$tokenResult = $user->createToken('main');

// Access token is the actual token string
$accessToken = $tokenResult->accessToken;
$token = $accessToken;
return response(compact('user','token'));


    }

    public function logout(Request $request){

        $user = Auth::user();
       
        $user->tokens()->each(function ($token) {
            $token->revoke();
        });
        return response('', 204);
    }


}
