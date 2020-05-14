<?php

namespace App\Providers;

use App;
use App\General\SupportedLanguages;
use App\General\SupportedLocales;
use App\Traits\LocaleCookie;
use Cookie;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{

    use LocaleCookie;

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    //public function boot()
    //{
    //    $cookie = Cookie::get('lang');
    //    dd(\Crypt::decrypt($cookie, false));
    //    $visitorIp = request()->ip();
    //    $geo = \GeoIP::getLocation($visitorIp);
    //
    //    if (empty($cookie) || is_null($cookie)) {
    //        LocaleCookie::setLanguageCookie('en');
    //    }
    //
    //    if (is_null($geo)) {
    //        if (! isset($cookie) && ! empty($cookie)) {
    //            App::setLocale($cookie);
    //
    //            return;
    //        }
    //
    //        App::setLocale(SupportedLocales::Default);
    //    }
    //
    //    $visitorCountry = $geo['country'];
    //
    //    if (! empty($cookie)) {
    //        App::setLocale($cookie);
    //    } else {
    //        if (array_key_exists($visitorCountry, SupportedLanguages::Languages)) {
    //            $preferredLang = SupportedLanguages::Languages[$visitorCountry];
    //
    //            App::setLocale($preferredLang);
    //        } else {
    //            App::setLocale(SupportedLocales::Default);
    //        }
    //    }
    //}
}
