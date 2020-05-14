@props([
  'header',
  'footer',
])

<div class="mb-2 border-solid rounded border shadow-sm border-gray-500">
  @unless(empty($header))
    <x-panel-header>{{ $header }}</x-panel-header>
  @endunless

  <div class="p-3">
    {{ $slot }}
  </div>

    @unless(empty($footer))
      <x-panel-footer>{{ $footer }}</x-panel-footer>
    @endunless
</div>
