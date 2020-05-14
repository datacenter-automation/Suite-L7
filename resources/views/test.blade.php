@extends('layouts.app')

@section('content')
  <x-section>
    <x-modal
      title="Deactivate Your Account?"
      submit-label="Deactivate"
    >
      <x-slot name="trigger">
        <button @click="on = true">Show Modal</button>
      </x-slot>

      Are you really sure you want to deactivate your account? All of your data will be permanently removed. This action
      cannot be undone.
    </x-modal>
  </x-section>

  <x-alert></x-alert>
@endsection
