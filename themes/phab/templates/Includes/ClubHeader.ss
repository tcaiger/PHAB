<div class="row">
    <div class="col-sm-8 no-gutter">
        <div class="event-intro">
            <% if $BannerImage %>
                <img src="$BannerImage.ReSample('900', '600').URL" class="img-responsive" alt="$BannerImage.URL">
            <% else %>
                <img src="$ThemeDir/img/club-default.jpg" class="img-responsive" alt="">
            <% end_if %>
        </div>
    </div>
    <div class="col-sm-4 no-gutter">
        <div class="event-full">
            <h2 class="heading">$Title</h2>
            <div class="info">
                <div>
                    <span>Club Location</span>
                    <span>$Location</span>
                </div>
                <div>
                    <span>Day</span>
                    <span>$Day</span>
                </div>
                <div>
                    <span>Time</span>
                    <span>$Time</span>
                </div>
                <ul class="social mt-30 mb-0">
                    <li class="fb-like">
                        <div class="fb-like" data-href="https://www.facebook.com/phabnz/" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    </li>
                    <br>
                    <li><a href="https://www.facebook.com/phabnz/" target="_blank"><i class=" fa fa-facebook"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="clearfix"></div>