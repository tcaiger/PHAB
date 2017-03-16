<% if $Event %>
    <% with $UpcomingEvent %>
        <div class="event pt-100 pb-100 home-event-section" data-parallax="scroll"
            <% if $Up.EventBanner.URL %>
             data-image-src="$Up.EventBanner.ReSample('1920','900').URL"
            <% else %>
             data-image-src="$ThemeDir/img/home-event-banner.jpg"
            <% end_if %>
        >
            <div class="container">
                <h2 class="heading text-center">Upcoming Event: <span class="color2">$Title</span>
                    <span class="sub-heading">$Up.EventSummary</span>
                    <span class="icon-divider"></span>
                </h2>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="next-event">
                            <% with $Date %>
                                $Day <span class="event-date">$DayOfMonth</span> $Month,
                            <% end_with %>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <ul class="timer" data-date="$Date $StartTime">           <!-- Put event Date in YYYY/MM/DD hh:mm:ss format -->
                            <li><span class="days">0</span>days</li>
                            <li><span class="hours">0</span>hrs</li>
                            <li><span class="minutes">00</span>min</li>
                            <li><span class="seconds">00</span>sec</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-12 mt-20">
                        <div class="event-details">
                            <p>$SummaryText</p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row mt-40">
                    <div class="col-sm-3">
                        <div class="icon-box-5 js-mh">
                            <div class="icon-box-icon">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="icon-box-content">
                                <h5 class="heading">$Location</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-box-5 js-mh">
                            <div class="icon-box-icon">
                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                            </div>
                            <div class="icon-box-content">
                                <h5 class="heading">Starts at $StartTime.Nice</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-box-5 js-mh">
                            <div class="icon-box-icon">
                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                            </div>
                            <div class="icon-box-content">
                                <h5 class="heading">Finishes at $EndTime.Nice</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="icon-box-5 js-mh">
                            <div class="icon-box-icon">
                                <i class="fa fa-users" aria-hidden="true"></i>
                            </div>
                            <div class="icon-box-content">
                                <h5 class="heading">Free Event</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row text-center mt-60">
                    <a href="$Link" class="btn btn-primary">View Event</a>
                </div>
            </div>
        </div>
    <% end_with %>
<% end_if %>
