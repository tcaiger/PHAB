<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="heading text-center">Upcoming <span class="color2">Events</span>
                <span class="sub-heading">You're welcome to all our events. We would love to see you there!</span>
                <span class="icon-divider"></span>
            </h2>
        </div>
        <% loop $UpcomingEvents %>
            <div class="col-sm-6">
                <div class="event-card">
                    <div class="event-on">
                        <span class="date">$Date.DayOfMonth</span>
                        <span class="month">$Date.ShortMonth</span>
                    </div>
                    <% if $BannerImage %>
                        <img src="$BannerImage.ReSample('900', '600').URL" class="img-responsive" alt="$BannerImage.URL">
                    <% else %>
                        <img src="$ThemeDir/img/event-default.jpg" class="img-responsive" alt="BannerImage">
                    <% end_if %>
                    <a href="$link" class="event-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                    <div class="event-detail">
                        <h4 class="heading">$Title</h4>
                        <span class="brief">
                            $SummaryText.LimitCharacters(180)
                        </span>
                    </div>
                    <ul class="timer" data-date="$Date $StartTime">           <!-- Put event Date in YYYY/MM/DD hh:mm:ss format -->
                        <li><span class="days">0</span>days</li>
                        <li><span class="hours">0</span>hrs</li>
                        <li><span class="minutes">00</span>min</li>
                        <li><span class="seconds">00</span>sec</li>
                    </ul>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>

<% if $RecentEvents %>
    <div class="bgcolor3 pt-80 pb-80">
        <div class="container">
            <div class="row ">
                <div class="col-sm-12">
                    <h2 class="heading text-center">Our Past <span class="color2">Events</span>
                        <span class="sub-heading">Here are some of the recent events we had. We hope you enjoyed them.</span>
                        <span class="icon-divider"></span>
                    </h2>
                </div>
                <% loop $RecentEvents %>
                    <div class="col-sm-6">
                        <div class="event-card">
                            <div class="event-on">
                                <span class="date">$Date.DayOfMonth</span>
                                <span class="month">$Date.ShortMonth</span>
                            </div>
                            <% if $BannerImage %>
                                <img src="$BannerImage.ReSample('900', '600').URL" class="img-responsive" alt="$BannerImage.URL">
                            <% else %>
                                <img src="$ThemeDir/img/event-default.jpg" class="img-responsive" alt="BannerImage">
                            <% end_if %>
                            <a href="$link" class="event-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                            <div class="event-detail">
                                <h4 class="heading">$Title</h4>
                        <span class="brief">
                            $SummaryText.LimitCharacters(180)
                        </span>
                            </div>
                            <ul class="timer" data-date="$Date $StartTime">           <!-- Put event Date in YYYY/MM/DD hh:mm:ss format -->
                                <li><span class="days">0</span>days</li>
                                <li><span class="hours">0</span>hrs</li>
                                <li><span class="minutes">00</span>min</li>
                                <li><span class="seconds">00</span>sec</li>
                            </ul>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
<% end_if %>