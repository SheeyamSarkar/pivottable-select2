<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    @include('layouts.css')
    @yield('pagecss')

    



</head>

<body>


    <!-- Navbar -->
    @include('layouts.navbar')


    <!-- SideNavbar -->
      @include('layouts.sidebar')



    <!-- Theme Change Panel -->
    @include('layouts.themepanel')



    <!-- Main Content -->
    <section class="main-section">
    
        @yield('content')
    </section>







    @include('layouts.scripts')
    @yield('pageScripts')


</body>

</html>