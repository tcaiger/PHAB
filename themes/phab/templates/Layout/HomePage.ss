<% include Landing %>


<div >
    <div class="container">
        <div class="row mb-60">
            <div class="col-sm-7 mt-100">
                <h3 class="heading">Who We <span class="color2">Are</span></h3>
                $Content
                <br/>
                <ul class="list-styled pull-left">
                    <li>$Bullet1</li>
                    <li>$Bullet2</li>
                </ul>
                <ul class="list-styled pull-left">
                    <li>$Bullet3</li>
                    <li>$Bullet4</li>
                </ul>
                <div class="clearfix"></div>
                <br/>
                <a href="$PageLink('AboutPage')" class="btn btn-primary btn-sm">Learn More
                    <i class="fa fa-long-arrow-right"></i> </a>
            </div>
            <div class="col-sm-5 mt-60">
                <div class="facebook-container mt-40 bgcolor3">
                    <%--<h4>Like Us On Facebook</h4>--%>
                    <div class="fb-page" data-href="https://www.facebook.com/phabnz" data-tabs="timeline" data-width="400" data-height="320" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
                        <blockquote cite="https://www.facebook.com/phabnz" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/phabnz">PHAB NZ</a></blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bgcolor3 pt-100 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="heading text-center">PHAB <span class="color2">Clubs & Events</span>
                        <span class="sub-heading">$SectionSubheading</span>
                        <span class="icon-divider"></span>
                    </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="icon-box-1">
                        <div class="icon-box-icon">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="icon-box-content">
                            <h5 class="heading">PEERS</h5>
                            <span>This PHAB's vocational day programme.</span>
                        </div>
                    </div>
                </div>
                <% loop $ClubsEvents %>
                    <div class="col-sm-4">
                        <div class="icon-box-1">
                            <div class="icon-box-icon">
                                <i class="fa fa-book"></i>
                            </div>
                            <div class="icon-box-content">
                                <h5 class="heading">$Title</h5>
                                <span>$SummaryText</span>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>

    <div class="gallery">
        <div class="container-fluid">
            <div class="row">
                <div class="gallery-overlay">
                    <h2 class="gallery-heading">Life At PHAB</h2>
                </div>
                <div class="col-sm-3 no-gutter">
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-1.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-1.jpg" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-3 no-gutter">
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-2.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-2.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-3.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-3.jpg" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-3 no-gutter">
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-4.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-4.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-5.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-5.jpg" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-sm-3 no-gutter">
                    <div class="img-box">
                        <a href="$ThemeDir/img/phab-home-6.jpg" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                        <img src="$ThemeDir/img/phab-home-6.jpg" alt="" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-80 mb-80">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="facts">
                            <div class="fact col-sm-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="$Clubs" data-speed="3000"></span> Clubs
                                </span>
                                <span class="foot">$ClubsText</span>
                            </div>
                            <div class="fact col-sm-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="$Members" data-speed="3000"></span> Members
                                </span>
                                <span class="foot">$MembersText</span>
                            </div>
                            <div class="fact col-sm-4">
                                <span class="head">
                                    <span class="count" data-from="0" data-to="$Mentors" data-speed="3000"></span> Mentors
                                </span>
                                <span class="foot">$MentorsText</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<% include UpcomingEvent %>