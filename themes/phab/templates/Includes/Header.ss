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
                    <% with $GetPage('ContactPage') %>
                        <a href="tel:{$Phone}" class="call-us"><i class="fa fa-phone"></i> $Phone</a>
                    <% end_with %>
                </div>
                <div class="col-sm-6">
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
                <a class="navbar-brand" href="$AbsoluteBaseURL">
                    <%--<img src="$ThemeDir/images/logo.png" alt="">--%>
                    <span style="font-size: 46px; font-weight: 800; color: #ffffff; position: relative; top: 17px">phab.</span>
                </a>
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