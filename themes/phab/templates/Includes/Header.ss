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

            <div class="collapse navbar-collapse" id="main-navigation">
                <ul class="nav navbar-nav navbar-right">

                    <% loop $Menu(1) %>
                        <li class="<% if $IsSection %>active<% end_if %>">
                            <a href="$link">$MenuTitle</a>
                            <% if $Children %>
                                <ul class="sub-menu">
                                    <% loop $Children %>
                                        <li><a href="$link">$MenuTitle</a></li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                        </li>
                    <% end_loop %>
                </ul>
            </div>
        </div>
    </nav>
</header>