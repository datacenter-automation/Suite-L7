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
  <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.3.5/dist/alpine.min.js" defer></script>

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

  <style>
    .bg-transparent {
      background-color: transparent;
    }

    .bg-black {
      background-color: #22292f;
    }

    .bg-grey-darkest {
      background-color: #3d4852;
    }

    .bg-grey-darker {
      background-color: #606f7b;
    }

    .bg-grey-dark {
      background-color: #8795a1;
    }

    .bg-grey {
      background-color: #b8c2cc;
    }

    .bg-grey-light {
      background-color: #dae1e7;
    }

    .bg-grey-lighter {
      background-color: #f1f5f8;
    }

    .bg-grey-lightest {
      background-color: #f8fafc;
    }

    .bg-white {
      background-color: #ffffff;
    }

    .bg-red-darkest {
      background-color: #3b0d0c;
    }

    .bg-red-darker {
      background-color: #621b18;
    }

    .bg-red-dark {
      background-color: #cc1f1a;
    }

    .bg-red {
      background-color: #e3342f;
    }

    .bg-red-light {
      background-color: #ef5753;
    }

    .bg-red-lighter {
      background-color: #f9acaa;
    }

    .bg-red-lightest {
      background-color: #fcebea;
    }

    .bg-orange-darkest {
      background-color: #462a16;
    }

    .bg-orange-darker {
      background-color: #613b1f;
    }

    .bg-orange-dark {
      background-color: #de751f;
    }

    .bg-orange {
      background-color: #f6993f;
    }

    .bg-orange-light {
      background-color: #faad63;
    }

    .bg-orange-lighter {
      background-color: #fcd9b6;
    }

    .bg-orange-lightest {
      background-color: #fff5eb;
    }

    .bg-yellow-darkest {
      background-color: #453411;
    }

    .bg-yellow-darker {
      background-color: #684f1d;
    }

    .bg-yellow-dark {
      background-color: #f2d024;
    }

    .bg-yellow {
      background-color: #ffed4a;
    }

    .bg-yellow-light {
      background-color: #fff382;
    }

    .bg-yellow-lighter {
      background-color: #fff9c2;
    }

    .bg-yellow-lightest {
      background-color: #fcfbeb;
    }

    .bg-green-darkest {
      background-color: #0f2f21;
    }

    .bg-green-darker {
      background-color: #1a4731;
    }

    .bg-green-dark {
      background-color: #1f9d55;
    }

    .bg-green {
      background-color: #38c172;
    }

    .bg-green-light {
      background-color: #51d88a;
    }

    .bg-green-lighter {
      background-color: #a2f5bf;
    }

    .bg-green-lightest {
      background-color: #e3fcec;
    }

    .bg-teal-darkest {
      background-color: #0d3331;
    }

    .bg-teal-darker {
      background-color: #20504f;
    }

    .bg-teal-dark {
      background-color: #38a89d;
    }

    .bg-teal {
      background-color: #4dc0b5;
    }

    .bg-teal-light {
      background-color: #64d5ca;
    }

    .bg-teal-lighter {
      background-color: #a0f0ed;
    }

    .bg-teal-lightest {
      background-color: #e8fffe;
    }

    .bg-blue-darkest {
      background-color: #12283a;
    }

    .bg-blue-darker {
      background-color: #1c3d5a;
    }

    .bg-blue-dark {
      background-color: #2779bd;
    }

    .bg-blue {
      background-color: #3490dc;
    }

    .bg-blue-light {
      background-color: #6cb2eb;
    }

    .bg-blue-lighter {
      background-color: #bcdefa;
    }

    .bg-blue-lightest {
      background-color: #eff8ff;
    }

    .bg-indigo-darkest {
      background-color: #191e38;
    }

    .bg-indigo-darker {
      background-color: #2f365f;
    }

    .bg-indigo-dark {
      background-color: #5661b3;
    }

    .bg-indigo {
      background-color: #6574cd;
    }

    .bg-indigo-light {
      background-color: #7886d7;
    }

    .bg-indigo-lighter {
      background-color: #b2b7ff;
    }

    .bg-indigo-lightest {
      background-color: #e6e8ff;
    }

    .bg-purple-darkest {
      background-color: #21183c;
    }

    .bg-purple-darker {
      background-color: #382b5f;
    }

    .bg-purple-dark {
      background-color: #794acf;
    }

    .bg-purple {
      background-color: #9561e2;
    }

    .bg-purple-light {
      background-color: #a779e9;
    }

    .bg-purple-lighter {
      background-color: #d6bbfc;
    }

    .bg-purple-lightest {
      background-color: #f3ebff;
    }

    .bg-pink-darkest {
      background-color: #451225;
    }

    .bg-pink-darker {
      background-color: #6f213f;
    }

    .bg-pink-dark {
      background-color: #eb5286;
    }

    .bg-pink {
      background-color: #f66d9b;
    }

    .bg-pink-light {
      background-color: #fa7ea8;
    }

    .bg-pink-lighter {
      background-color: #ffbbca;
    }

    .bg-pink-lightest {
      background-color: #ffebef;
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
