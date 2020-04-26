<?php

namespace App\Http;

use App\Http\Middleware\ActiveUser;
use App\Http\Middleware\APIversion;
use App\Http\Middleware\Authenticate;
use App\Http\Middleware\AuthLock;
use App\Http\Middleware\CheckForMaintenanceMode;
use App\Http\Middleware\Customer;
use App\Http\Middleware\EncryptCookies;
use App\Http\Middleware\ETag;
use App\Http\Middleware\Internal;
use App\Http\Middleware\LastModified;
use App\Http\Middleware\Local;
use App\Http\Middleware\LogRequestsWithXRequestId;
use App\Http\Middleware\RedirectIfAuthenticated;
use App\Http\Middleware\ThrottleSimultaneousRequests;
use App\Http\Middleware\TrimStrings;
use App\Http\Middleware\TrustProxies;
use App\Http\Middleware\Vendor;
use App\Http\Middleware\VerifyCsrfToken;
use App\Http\Middleware\WhiteGlove;
use BeyondCode\ServerTiming\Middleware\ServerTimingMiddleware;
use Fruitcake\Cors\HandleCors;
use Illuminate\Auth\Middleware\AuthenticateWithBasicAuth;
use Illuminate\Auth\Middleware\Authorize;
use Illuminate\Auth\Middleware\EnsureEmailIsVerified;
use Illuminate\Auth\Middleware\RequirePassword;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Foundation\Http\Kernel as HttpKernel;
use Illuminate\Foundation\Http\Middleware\ConvertEmptyStringsToNull;
use Illuminate\Foundation\Http\Middleware\ValidatePostSize;
use Illuminate\Http\Middleware\SetCacheHeaders;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Routing\Middleware\ThrottleRequests;
use Illuminate\Routing\Middleware\ValidateSignature;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Spatie\Permission\Middlewares\PermissionMiddleware;
use Spatie\Permission\Middlewares\RoleMiddleware;
use Spatie\Permission\Middlewares\RoleOrPermissionMiddleware;

class Kernel extends HttpKernel
{
    /**
     * The application's global HTTP middleware stack.
     *
     * These middleware are run during every request to your application.
     *
     * @var array
     */
    protected $middleware = [
        ServerTimingMiddleware::class,
        TrustProxies::class,
        HandleCors::class,
        CheckForMaintenanceMode::class,
        ValidatePostSize::class,
        TrimStrings::class,
        ConvertEmptyStringsToNull::class,
        ETag::class,
    ];

    /**
     * The application's route middleware groups.
     *
     * @var array
     */
    protected $middlewareGroups = [
        'web' => [
            EncryptCookies::class,
            AddQueuedCookiesToResponse::class,
            StartSession::class,
            AuthenticateSession::class,
            ShareErrorsFromSession::class,
            VerifyCsrfToken::class,
            SubstituteBindings::class,
        ],

        'api' => [
            'throttle:60,1',
            SubstituteBindings::class,
            LogRequestsWithXRequestId::class,
        ],
    ];

    /**
     * The application's route middleware.
     *
     * These middleware may be assigned to groups or used individually.
     *
     * @var array
     */
    protected $routeMiddleware = [
        'api.version'        => APIversion::class,
        'auth'               => Authenticate::class,
        'auth.basic'         => AuthenticateWithBasicAuth::class,
        'auth.lock'          => AuthLock::class,
        'active_user'        => ActiveUser::class,
        'bindings'           => SubstituteBindings::class,
        'cache.headers'      => SetCacheHeaders::class,
        'can'                => Authorize::class,
        'customer'           => Customer::class,
        'etag'               => ETag::class,
        'guest'              => RedirectIfAuthenticated::class,
        'internal'           => Internal::class,
        'last_modified'      => LastModified::class, /**/
        'local'              => Local::class,
        'password.confirm'   => RequirePassword::class,
        'permission'         => PermissionMiddleware::class,
        'role'               => RoleMiddleware::class,
        'role_or_permission' => RoleOrPermissionMiddleware::class,
        'signed'             => ValidateSignature::class,
        'simultaneous'       => ThrottleSimultaneousRequests::class,
        'throttle'           => ThrottleRequests::class,
        'vendor'             => Vendor::class,
        'verified'           => EnsureEmailIsVerified::class,
        'whitegloves'        => WhiteGlove::class,
    ];
}
