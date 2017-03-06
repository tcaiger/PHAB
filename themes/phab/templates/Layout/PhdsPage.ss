<% include TopBanner %>

<div class="container mt-100 mb-100">
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
                        <span>$Stream1Title</span>
                        <span>$Stream1Details</span>
                    </div>
                    <div>
                        <span>$Stream2Title</span>
                        <span>$Stream2Details</span>
                    </div>
                    <div>
                        <span>$Stream3Title</span>
                        <span>$Stream3Details</span>
                    </div>
                    <ul class="social mt-30 mb-0">
                        <li class="fb-like">
                            <div class="fb-like" data-href="https://www.facebook.com/phabnz/" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                        </li>
                        <br>
                        <li>
                            <a href="https://www.facebook.com/phabnz/" target="_blank"><i class=" fa fa-facebook"></i></a>
                        </li>
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
                    <a href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-futbol-o fa-fw"></i> $Stream1Title</a>
                </li>
                <li role="presentation" class="">
                    <a href="#t1body2" aria-controls="t1body2" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-university fa-fw"></i> $Stream2Title</a>
                </li>
                <li role="presentation" class="">
                    <a href="#t1body3" aria-controls="t1body3" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-university fa-fw"></i> $Stream3Title</a>
                </li>
            </ul>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="t1body1">
                    <br>
                    $Stream1Content
                </div>
                <div role="tabpanel" class="tab-pane fade" id="t1body2">
                    $Stream2Content
                </div>
                <div role="tabpanel" class="tab-pane fade" id="t1body3">
                    $Stream2Content
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <h3 class="heading text-center">Participate Now!</h3>
        $EnquiryForm
    </div>
</div>