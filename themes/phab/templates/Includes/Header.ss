<div class="loader-backdrop">           <!-- Loader -->
    <div class="loader">
        <div class="ball-1"></div>
        <div class="ball-2"></div>
    </div>
</div>

<header>            <!-- Header = Topbar + Navigation Bar -->
    <div class="topbar">            <!-- Dark Blue Topbar -->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <a href="tel:1800-234-2845" class="call-us"><i class="fa fa-phone"></i> 1800-234-2845</a>          <!-- Change Phone Number Here -->
                </div>
                <div class="col-sm-6">
                    <div class="dropdown">          <!-- Language Dropdown -->
                        <button class="btn btn-xs" type="button" id="select-lang" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-globe"></i> English
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="select-lang">
                            <li><a href="#">English</a></li>
                            <li><a href="#">Spanish</a></li>
                            <li><a href="#">Vietnamese</a></li>
                        </ul>
                    </div>
                    <form class="search form-inline">           <!-- Search Form -->
                        <input type="text" class="form-control" placeholder="Start typing...">
                        <button class="btn-search" type="submit"><i class="fa fa-search fa-fw"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-default">         <!-- Navigation Bar -->
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false">
                    <span class="sr-only">Toggle Menu</span>
                    <span>Menu</span>
                </button>
                <a class="navbar-brand" href="$AbsoluteBaseURL"><img src="$ThemeDir/images/logo.png" alt=""></a> <!-- Replace with your Logo -->
            </div>

            <div class="collapse navbar-collapse" id="main-navigation">         <!-- Main Menu -->
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="$AbsoluteBaseURL">Home</a></li>
                    <li><a href="#">About</a>
                        <ul class="sub-menu">									<!-- Sub Menu -->
                            <li><a href="about-us">About Us</a></li>
                            <li><a href=pasifika-partnership>Pasifika Partnership</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Clubs & Events</a>
                        <ul class="sub-menu">																<!-- Sub Menu -->
                            <li><a href="programmes"> Clubs <i class="fa fa-angle-right pull-right"></i></a>
                                <ul class="sub-menu">														<!-- Sub Sub Menu -->
                                    <li><a href="programmes/club-1">Club 1</a></li>
                                    <li><a href="programmes/club-2">Club 2</a></li>
                                </ul>
                            </li>
                            <li><a href="programmes"> Events <i class="fa fa-angle-right pull-right"></i></a>
                                <ul class="sub-menu">														<!-- Sub Sub Menu -->
                                    <li><a href="programmes/event-1">Event 1</a></li>
                                    <li><a href="programmes/event-2">Event 2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Get Involved</a>
                        <ul class="sub-menu">																<!-- Sub Menu -->
                            <li><a href="give-funding">Funders</a></li>
                            <li><a href="volunteer">Volunteers</a></li>
                        </ul>
                    </li>
                    <li><a href="#">News</a>
                        <ul class="sub-menu">																<!-- Sub Menu -->
                            <li><a href="news">News</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Contact</a>
                        <ul class="sub-menu">																<!-- Sub Menu -->
                            <li><a href="contact-us">Contact Us</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>