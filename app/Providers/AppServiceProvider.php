<?php

namespace App\Providers;

use App;
use Cookie;
use Crypt;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
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
    public function boot()
    {
        //if (! Cookie::get('lang')) {
        //    setcookie('lang', Crypt::encrypt('en'));
        //}
        //
        //// todo: this isn't working!!
        //
        //$cookie = Crypt::decrypt(Cookie::get('lang'), false);
        //$visitorIp = request()->ip();
        //$geo = \GeoIP::getLocation($visitorIp);
        //
        //if (is_null($geo)) {
        //    if (! isset($cookie) && ! empty($cookie)) {
        //        App::setLocale($cookie);
        //
        //        return;
        //    }
        //
        //    App::setLocale('en');
        //}
        //
        //$visitorCountry = $geo['country'];
        //
        //$supportedLanguages = [
        //    'United States' => 'en',
        //    'Canada'        => 'en',
        //    'India'         => 'en',
        //    'Argentina'     => 'es',
        //    'Spain'         => 'es',
        //    'Chile'         => 'es',
        //    'Austria'       => 'de',
        //    'Luxembourg'    => 'de',
        //    'Belgium'       => 'de',
        //    'Germany'       => 'de',
        //];
        //
        //if (! empty($cookie)) {
        //    App::setLocale($cookie);
        //} else {
        //    if (array_key_exists($visitorCountry, $supportedLanguages)) {
        //        $preferredLang = $supportedLanguages[$visitorCountry];
        //
        //        App::setLocale($preferredLang);
        //    } else {
        //        App::setLocale('en');
        //    }
        //}
    }
}

//English					en
//Spanish					es
//Chinese					zh
//Hindustani				hi
//Arabic					ar
//Russian					ru
//Portuguese				pt
//French					fr
//Dutch					    nl
//Italian					it
//Japanese				    ja
//Korean					ko
