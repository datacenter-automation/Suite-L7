<?php

namespace App\Http\Controllers;

use App;
use Cookie;

class LanguagePreferenceController extends Controller
{

    public function setLanguage($lang)
    {

        $supportedLocales = ['en', 'es', 'de'];

        if (in_array($lang, $supportedLocales)) {

            Cookie::queue(Cookie::make('lang', $lang, '20160'));

            App::setLocale($lang);
        } else {
            App::setLocale('en');
        }

        return back();
    }
}
