<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <style>
    .form-control-primary {
      margin: 10px;
      opacity: 0.2;
      border-radius: 2px;
    }

    .sidebar {
      position: fixed;
      left: 0;
      bottom: 0;
      top: 0;
      z-index: 100;
      padding: 70px 0 0 10px;
      border-right: 1px solid #d3d3d3;
    }

    .left-sidebar {
      position: sticky;
      top: 0;
      height: calc(100vh - 70px)
    }

    .sidebar-nav li .nav-link {
      color: #333;
      font-weight: 500;
    }

    main {
      padding-top: 90px;
    }

    main .card {
      margin-bottom: 20px;
    }
  </style>

  <title>Dashboard</title>
</head>
<body>
<nav class="navbar navbar-dark table-dark fixed-top flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">DCAS Dashboard</a>
  <input type="search" class="col-sm-2 rounded form-control form-control-primary" placeholder="Search...">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Logout</a>
    </li>
  </ul>
</nav>

<div class="container-fluid">
  <div class="row">
    <!-- Sidear -->
    <div class="col-md-2 bg-light d-none d-md-block sidebar">
      <div class="left-sidebar">
        <ul class="nav flex-column sidebar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="#">
              <svg class="bi bi-chevron-right" width="16" height="16" viewBox="0 0 20 20" fill="currentColor"
                   xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
                      clip-rule="evenodd"/>
              </svg>
              Candidates
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg class="bi bi-chevron-right" width="16" height="16" viewBox="0 0 20 20" fill="currentColor"
                   xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
                      clip-rule="evenodd"/>
              </svg>
              Jobs
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg class="bi bi-chevron-right" width="16" height="16" viewBox="0 0 20 20" fill="currentColor"
                   xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
                      clip-rule="evenodd"/>
              </svg>
              Orders
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg class="bi bi-chevron-right" width="16" height="16" viewBox="0 0 20 20" fill="currentColor"
                   xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
                      clip-rule="evenodd"/>
              </svg>
              Invoices
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg class="bi bi-chevron-right" width="16" height="16" viewBox="0 0 20 20" fill="currentColor"
                   xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M6.646 3.646a.5.5 0 01.708 0l6 6a.5.5 0 010 .708l-6 6a.5.5 0 01-.708-.708L12.293 10 6.646 4.354a.5.5 0 010-.708z"
                      clip-rule="evenodd"/>
              </svg>
              Reports
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
  <h3>Candidates</h3>
  <hr>
  <div class="table-responsive">
    <table class="table table-dark">
      <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Position</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>Project Manager</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>JS developer</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td>Larry</td>
        <td>Bird</td>
        <td>Back-end developer</td>
      </tr>
      <tr>
        <th scope="row">4</th>
        <td>Martin</td>
        <td>Smith</td>
        <td>Back-end developer</td>
      </tr>
      <tr>
        <th scope="row">5</th>
        <td>Kate</td>
        <td>Mayers</td>
        <td>Scrum master</td>
      </tr>
      </tbody>
    </table>
  </div>

  <h3>Invoice</h3>
  <hr>

  <div class="row">
    <div class="col-sm-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Invoice #184382</h5>
          <p class="card-text">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci.
            Aenean dignissim pellentesque felis.</p>
          <a href="#" class="btn btn-primary">Print</a>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Invoice #184386</h5>
          <p class="card-text">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci.
            Aenean dignissim pellentesque felis.</p>
          <a href="#" class="btn btn-primary">Print</a>
        </div>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Invoice #184389</h5>
          <p class="card-text">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci.
            Aenean dignissim pellentesque felis.</p>
          <a href="#" class="btn btn-primary">Print</a>
        </div>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Invoice #184391</h5>
          <p class="card-text">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci.
            Aenean dignissim pellentesque felis.</p>
          <a href="#" class="btn btn-primary">Print</a>
        </div>
      </div>
    </div>
  </div>
</main>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>
