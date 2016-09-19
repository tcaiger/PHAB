<% include TopBanner %>

<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-8 no-gutter">
            <div class="event-intro">
                <% if $BannerImage %>
                    <img src="$BannerImage.ReSample('900', '600').URL" class="img-responsive" alt="$BannerImage.URL">
                <% else %>
                    <img src="$ThemeDir/img/event-default.jpg" class="img-responsive" alt="BannerImage">
                <% end_if %>
                <ul class="timer" data-date="$Date $StartTime">           <!-- Put event Date in YYYY/MM/DD hh:mm:ss format -->
                    <li><span class="days">0</span>days</li>
                    <li><span class="hours">0</span>hrs</li>
                    <li><span class="minutes">00</span>min</li>
                    <li><span class="seconds">00</span>sec</li>
                </ul>
            </div>
        </div>
        <div class="col-sm-4 no-gutter">
            <div class="event-full">
                <h2 class="heading">$Title</h2>
                <div class="info">
                    <div>
                        <span>Event Location</span>
                        <span>$Location</span>
                    </div>
                    <div>
                        <span>Time</span>
                        <span>$StartTime.Nice - $EndTime.Nice</span>
                    </div>
                    <div>
                        <span>Date</span>
                        <% if $Date %><span>$Date.Long</span><% else %><span>TBC</span><% end_if %>
                    </div>
                    <ul class="social mt-30 mb-0">
                        <li class="fb-like">
                            <div class="fb-like" data-href="$GETUrl" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                        </li>
                        <br>
                        <li><a href="#"><i class=" fa fa-facebook"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="row mt-80 mb-40">
        <div class="col-sm-12">
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li role="presentation" class="active">
                    <a href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-futbol-o fa-fw"></i> Event Brief</a>
                </li>
                <% if $MoreDetails %>
                    <li role="presentation" class="">
                        <a href="#t1body2" aria-controls="t1body2" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-university fa-fw"></i> More Details</a>
                    </li>
                <% end_if %>
            </ul>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="t1body1">
                    <br>
                    $Content
                </div>
                <% if $MoreDetails %>
                    <div role="tabpanel" class="tab-pane fade" id="t1body2">
                        $MoreDetailsContent
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>

    <div class="row">
        <h3 class="heading text-center">Participate Now!</h3>
        $EnquiryForm
    </div>
</div>