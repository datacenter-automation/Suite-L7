<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Scripts -->
  <script src="{{ mix('js/manifest.js') }}"></script>
  <script src="{{ mix('js/vendor.js') }}"></script>
  <script src="{{ mix('js/app.js') }}"></script>

  <script>
    if ('serviceWorker' in navigator) {
      window.addEventListener('load', () => {
        navigator.serviceWorker.register('/service-worker.js');
      });
    }
  </script>

  <!-- Styles -->
  <link href="{{ mix('css/app.css') }}" rel="stylesheet">

  <style>
    .select-editable {
      position: relative;
      background-color: white;
      border: solid grey 1px;
      width: 120px;
      height: 18px;
    }

    .select-editable select {
      position: absolute;
      top: 0px;
      left: 0px;
      font-size: 14px;
      border: none;
      width: 120px;
      margin: 0;
    }

    .select-editable input {
      position: absolute;
      top: 0px;
      left: 0px;
      width: 100px;
      padding: 1px;
      font-size: 12px;
      border: none;
    }

    .select-editable select:focus, .select-editable input:focus {
      outline: none;
    }
  </style>

  {{--  @includeWhen(Illuminate\Support\Str::contains(\Route::current()->uri(), '/edit'), 'partials._inline-editor')--}}
  @include('partials._inline-editor')
</head>
<body class="bg-gray-100 h-screen antialiased leading-none">
<div id="app">
  <nav class="bg-blue-900 shadow mb-8 py-6">
    <div class="container mx-auto px-6 md:px-0">
      <div class="flex items-center justify-center">
        <div class="mr-6">
          <a href="{{ url('/') }}" class="text-lg font-semibold text-gray-100 no-underline">
            {{ config('app.name', 'Laravel') }}
          </a>
        </div>
        <div class="flex-1 text-right">
          @guest
            <a class="no-underline hover:underline text-gray-300 text-sm p-3"
               href="{{ route('login') }}">{{ __('Login') }}</a>
            @if (Route::has('register'))
              <a class="no-underline hover:underline text-gray-300 text-sm p-3"
                 href="{{ route('register') }}">{{ __('Register') }}</a>
            @endif
          @else
            <span class="text-gray-300 text-sm pr-4">{{ Auth::user()->name }}</span>

            <a href="{{ route('logout') }}"
               class="no-underline hover:underline text-gray-300 text-sm p-3"
               onclick="event.preventDefault();
                                    document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="hidden">
              {{ csrf_field() }}
            </form>
          @endguest
        </div>
      </div>
    </div>
  </nav>

  @yield('content')
</div>
</body>
</html>
