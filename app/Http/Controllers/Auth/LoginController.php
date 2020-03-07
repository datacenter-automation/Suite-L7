<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except([
            'logout',
            'locked',
            'unlock',
        ]);
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|\Illuminate\View\View
     */
    public function locked()
    {
        if (! session('lock-expires-at')) {
            return redirect('/');
        }

        if (session('lock-expires-at') > now()) {
            return redirect('/');
        }

        return view('auth.locked');
    }

    /**
     * Log the user out of the application.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\Response
     *
     * @note Logout current device only.
     */
    public function logout(Request $request)
    {
        $this->guard()->logoutCurrentDevice();

        $request->session()->invalidate();

        return $this->loggedOut($request) ?: redirect('/');
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function unlock(Request $request)
    {
        $check = Hash::check($request->input('password'), $request->user()->password);

        if (! $check) {
            return redirect()->route('login.locked')->withErrors([
                'Your password does not match your profile.',
            ]);
        }

        session(['lock-expires-at' => now()->addMinutes($request->user()->getLockoutTime())]);

        return redirect('/');
    }
}
