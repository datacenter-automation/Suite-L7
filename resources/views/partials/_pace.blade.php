{{-- partials/_pace.blade.php --}}

<!-- START ('partials._pace') -->

<!-- Stylesheet - Pace.js -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css" rel="stylesheet"
      data-turbolinks-track="true">

<style>
  .bg-gray {
    background-color: darkslategray;
  }

  body > :not(.pace),
  body:before,
  body:after {
    -webkit-transition: opacity .4s ease-in-out;
    -moz-transition: opacity .4s ease-in-out;
    -o-transition: opacity .4s ease-in-out;
    transition: opacity .4s ease-in-out
  }

  body:not(.pace-done) > :not(.pace),
  body:not(.pace-done):before,
  body:not(.pace-done):after {
    opacity: 0
  }

  .pace {
    pointer-events: none;

    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;

    -webkit-perspective: 12rem;
    -moz-perspective: 12rem;
    perspective: 12rem;

    z-index: 2000;
    position: fixed;
    height: 6rem;
    width: 6rem;
    margin: auto;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }

  .pace.pace-inactive .pace-progress {
    display: none;
  }

  .pace .pace-progress {
    position: fixed;
    z-index: 2000;
    display: block;
    left: 0;
    top: 0;
    height: 6rem;
    width: 6rem !important;
    line-height: 6rem;
    font-size: 2rem;
    border-radius: 50%;
    background: rgba(0, 0, 0, 0.8);
    color: #fff;
    font-family: "Helvetica Neue", sans-serif;
    font-weight: 100;
    text-align: center;

    -webkit-animation: pace-theme-center-circle-spin linear infinite 2s;
    -moz-animation: pace-theme-center-circle-spin linear infinite 2s;
    -o-animation: pace-theme-center-circle-spin linear infinite 2s;
    animation: pace-theme-center-circle-spin linear infinite 2s;

    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }

  .pace .pace-progress:after {
    content: attr(data-progress-text);
    display: block;
  }

  @-webkit-keyframes pace-theme-center-circle-spin {
    from {
      -webkit-transform: rotateY(0deg)
    }
    to {
      -webkit-transform: rotateY(360deg)
    }
  }

  @-moz-keyframes pace-theme-center-circle-spin {
    from {
      -moz-transform: rotateY(0deg)
    }
    to {
      -moz-transform: rotateY(360deg)
    }
  }

  @-ms-keyframes pace-theme-center-circle-spin {
    from {
      -ms-transform: rotateY(0deg)
    }
    to {
      -ms-transform: rotateY(360deg)
    }
  }

  @-o-keyframes pace-theme-center-circle-spin {
    from {
      -o-transform: rotateY(0deg)
    }
    to {
      -o-transform: rotateY(360deg)
    }
  }

  @keyframes pace-theme-center-circle-spin {
    from {
      transform: rotateY(0deg)
    }
    to {
      transform: rotateY(360deg)
    }
  }
</style>

<!-- Javascript - Pace.js -->
<script src="/js/pace.min.js" data-turbolinks-track="true"></script>

<script>
  Pace.on("start", function () {
    $("body").addClass('bg-gray');
    $(".pace").show();
  });

  Pace.on("done", function () {
    $(".pace").hide();
    $("body").removeClass('bg-gray')
  });
</script>

<!-- END ('partials._pace') -->
