<% include TopBanner %>

<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="heading text-center">Upcoming <span class="color2">Events</span>
                <span class="sub-heading">You're welcome to all our events. We would love to see you there!</span>
                <span class="icon-divider"></span>
            </h2>
        </div>
        <% loop $Children %>
            <div class="col-sm-6">
                <div class="event-card">
                    <div class="event-on">
                        <span class="date">27</span>
                        <span class="month">SEPT</span>
                    </div>
                    <% if $BannerImage %>
                        <img src="$BannerImage.ReSample('900', '600').URL"  class="img-responsive" alt="$BannerImage.URL">
                    <% else %>
                        <img src="$ThemeDir/img/event-default.jpg" class="img-responsive" alt="BannerImage">
                    <% end_if %>
                    <a href="$link" class="event-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                    <div class="event-detail">
                        <h4 class="heading">$Title</h4>
                        <span class="brief">
                            $SummaryText
                        </span>
                    </div>
                    <ul class="timer" data-date="2016/09/27 02:34:10">           <!-- Put event Date in YYYY/MM/DD hh:mm:ss format -->
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