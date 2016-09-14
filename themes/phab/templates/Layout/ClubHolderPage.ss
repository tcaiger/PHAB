<% include TopBanner %>

<div class="mt-100">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="heading text-center">PHAB <span class="color2">Clubs</span>
                    <span class="sub-heading">You're welcome to all our clubs. We would love to see you there!</span>
                    <span class="icon-divider"></span>
                </h2>
            </div>
        </div>
    </div>
</div>

<div class="container mb-60">
    <div class="row">
        <% loop $Children %>
            <div class="col-sm-4">
                <div class="course-card new">
                    <% if $BannerImage %>
                        <img src="$BannerImage.ReSample('900', '600').URL" class="img-responsive" alt="$BannerImage.URL">
                    <% else %>
                        <img src="$ThemeDir/img/club-default.jpg" class="img-responsive course-img" alt="">
                    <% end_if %>
                    <a href="$link" class="course-link"><i class="fa fa-link" aria-hidden="true"></i></a>
                    <div class="course-detail">
                        <h4 class="heading">$Title</h4>
                        <span class="brief">$SummaryText</span>
                        <ul class="course-features">
                            <li><i class="fa fa-map-marker"></i> $Location</li>
                            <li><i class="fa fa-clock-o"></i> $Frequency</li>
                        </ul>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>