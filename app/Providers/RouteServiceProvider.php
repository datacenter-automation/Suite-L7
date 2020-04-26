<?php

namespace App\Providers;

use File;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * The path to the "home" route for your application.
     *
     * @var string
     */
    public const HOME = '/dashboard';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        $this->mapAuthorizationRoutes();

        $this->mapCustomerRoutes();

        $this->mapInternalRoutes();

        $this->mapVendorRoutes();

        $this->mapWhiteGloveRoutes();

        $this->mapLocalRoutes();

        $this->mapServerFetchedPartialsRoutes();
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     */
    protected function mapApiRoutes()
    {
        $apiRoutes = [];

        foreach (File::allFiles(base_path('routes')) as $route) {
            preg_match('/api\.(v[0-9]+)\.php/', $route->getPathName()) ? array_push($apiRoutes, $route->getPathname()) : null;
        }

        Route::prefix('api')->middleware('auth:api')->namespace($this->namespace)->group(base_path('routes/api.php'));

        foreach ($apiRoutes as $api) {
            preg_match('/api\.v([0-9]+)\.php/', $api, $version);

            Route::group([
                'middleware' => ['auth:api', 'api', 'api.version:'.$version[1], 'etag'],
                'namespace'  => 'App\Http\Controllers\API\V'.$version[1],
                'prefix'     => 'api/v'.$version[1],
            ], function () use ($api) {
                require $api;
            });
        }
    }

    /**
     * Define the "Customer" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapCustomerRoutes()
    {
        Route::middleware([
            'web',
            'active_user',
            'customer',
        ])->prefix('dashboard')->namespace($this->namespace)->group(base_path('routes/customer.php'));
    }

    /**
     * Define the "Internal" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapInternalRoutes()
    {
        Route::middleware([
            'web',
            'active_user',
            'internal',
        ])->prefix('dashboard/internal')->namespace($this->namespace)->group(base_path('routes/internal.php'));
    }

    /**
     * Define the "development/local" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapLocalRoutes()
    {
        Route::middleware([
            'web',
            'active_user',
            'local',
        ])->namespace($this->namespace)->group(base_path('routes/local.php'));
    }

    /**
     * Define the "Server-fetched partials" routes for the application.
     */
    protected function mapServerFetchedPartialsRoutes()
    {
        Route::middleware([
            'web',
            'etag',
        ])->prefix('partials')->namespace($this->namespace)->group(base_path('routes/server-fetched-partials.php'));
    }

    /**
     * Define the "Vendor" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapVendorRoutes()
    {
        Route::middleware([
            'web',
            'active_user',
            'vendor',
        ])->prefix('dashboard/vendor')->namespace($this->namespace)->group(base_path('routes/vendor.php'));
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapWebRoutes()
    {
        if (config('datacenter-automation-suite.IN_DEVELOPMENT')) {
            ! in_array(request()->ip(), [
                '127.0.0.1',
                '216.80.104.45',
            ]) ? abort(401, 'IP address not on host whitelist.') : true;
        }

        Route::middleware('web')->namespace($this->namespace)->group(base_path('routes/web.php'));
    }

    /**
     * Define the authorization routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapAuthorizationRoutes()
    {
        Route::middleware([
            'web',
        ])->namespace($this->namespace)->group(base_path('routes/authorization.php'));
    }

    /**
     * Define the "White Gloves" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     */
    protected function mapWhiteGloveRoutes()
    {
        Route::middleware([
            'web',
            'active_user',
            'whitegloves',
        ])->prefix('dashboard/whitegloves')->namespace($this->namespace)->group(base_path('routes/whiteglove.php'));
    }
}
