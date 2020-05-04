<?php

namespace App\Http\Controllers;

use App;
use Cookie;

class LanguagePreferenceController extends Controller
{

    public function setLanguage($lang)
    {
        $supportedLocales = [
            'ar',
            'de',
            'en',
            'es',
            'fr',
            'hi',
            'it',
            'ja',
            'ko',
            'nl',
            'pt',
            'ru',
            'zh',
        ];

        if (in_array($lang, $supportedLocales)) {
            Cookie::queue(Cookie::make('lang', $lang, '20160')); // 2 week expiry

            App::setLocale($lang);
        } else {
            App::setLocale('en');
        }

        return back();
    }
}

//Chinese					zh
//English					en
//Hindustani				hi
//Spanish					es
//Arabic					ar
//Russian					ru
//Portuguese				pt
//French					fr
//Dutch					nl
//Italian					it
//Japanese				ja
//Korean					ko
