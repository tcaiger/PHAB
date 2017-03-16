<div class="loader-backdrop">
    <div class="loader">
        <div class="ball-1"></div>
        <div class="ball-2"></div>
    </div>
</div>

<header>
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <% with $GetPage('ContactPage') %>
                        <a href="tel:{$Phone}" class="call-us"><i class="fa fa-phone"></i> $Phone</a>
                    <% end_with %>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navigation" aria-expanded="false">
                    <span class="sr-only">Toggle Menu</span>
                    <span>Menu</span>
                </button>
                <a class="navbar-brand" href="$AbsoluteBaseURL">
                    <img class="t-logo" src="$ThemeDir/img/logos/phab-logo.svg" alt="phab">
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