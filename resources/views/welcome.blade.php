<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Styles -->
  <link href="{{ mix('css/app.css') }}" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen antialiased leading-none">
<div class="flex flex-col">
  @if(Route::has('login'))
    <div class="absolute top-0 right-0 mt-4 mr-4">
      @auth
        <a href="{{ url('/home') }}"
           class="no-underline hover:underline text-sm font-normal text-teal-800 uppercase">{{ __('Home') }}</a>
      @else
        <a href="{{ route('login') }}"
           class="no-underline hover:underline text-sm font-normal text-teal-800 uppercase pr-6">{{ __('Login') }}</a>
      @endauth
    </div>
  @endif

  <div class="min-h-screen flex items-center justify-center">
    <div class="flex flex-col justify-around h-full">
      <div>
        <h1 class="text-gray-600 text-center font-light tracking-wider text-5xl mb-6">
          {{ config('app.name', 'Laravel') }}
        </h1>
        <ul class="list-reset">
          <li class="inline pr-8">
            <a href="https://dcas.com/docs"
               class="no-underline hover:underline text-sm font-normal text-teal-800 uppercase" title="Documentation">Documentation</a>
          </li>
        </ul>
      </div>
      <div class="title m-b-md pt-4">
        {{ __('message.welcome') }}
      </div>
    </div>
  </div>
</div>
</body>
</html>
