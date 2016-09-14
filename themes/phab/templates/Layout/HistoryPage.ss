<% include TopBanner %>

<div class="container mt-100 mb-40">
    <div class="row">
        <div class="col-sm-7">
            <h3 class="heading">An <span class="color2">Introduction</span></h3>
            <p class="lead">$PageIntro</p>
            $Content
        </div>
        <div class="col-sm-5">
            <h3 class="heading">Our <span class="color2">Milestones</span></h3>
            <ul class="imp-dates">
                <li>
                    <div class="when">
                        <span class="year">$M1Year</span>
                        <span class="month">$M1Month</span>
                    </div>
                    <div class="what">
                        <strong>$M1Heading</strong>
                        <p>$M1Text</p>
                    </div>
                </li>
                <li>
                    <div class="when">
                        <span class="year">$M2Year</span>
                        <span class="month">$M2Month</span>
                    </div>
                    <div class="what">
                        <strong>$M2Heading</strong>
                        <p>$M2Text</p>
                    </div>
                </li>
                <li>
                    <div class="when">
                        <span class="year">$M3Year</span>
                        <span class="month">$M3Month</span>
                    </div>
                    <div class="what">
                        <strong>$M3Heading</strong>
                        <p>$M3Text</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="clearfix"></div>

<div class="bgcolor2 mt-100 mb-100">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 motto">
                <img src="$ThemeDir/images/motto.png" class="motto-img hidden-xs" alt="">
                <p class="motto-text">$Blockquote</p>
            </div>
        </div>
    </div>
</div>

<div class="clearfix"></div>

<div class="container mt-20 mb-100">
    <div class="row">
        <div class="col-md-8 no-right-gutter hide-overflow">
            <div class="col-sm-6 info-box bgcolor3">
                <p class="fact">Estd. <span class="fact-fig">1968</span></p>
            </div>
            <div class="col-sm-6 info-box">
                <p class="font22 color2">We're taking pride every year.</p>
                <p>A wonderful serenity has taken possession of my entire soul.</p>
            </div>
            <div class="col-sm-6 info-box">
                <p class="font22 color2">We're taking pride every year.</p>
                <p>A wonderful serenity has taken possession of my entire soul.</p>
            </div>
            <div class="col-sm-6 info-box bgcolor3">
                <p class="fact">Ranked <span class="fact-fig">#1</span></p>
            </div>
        </div>
        <div class="col-md-4 info-box2x no-gutter">
            <img src="$ThemeDir/images/gallery-4.jpg" alt="">
        </div>
    </div>
</div>

<div class="clearfix"></div>

<div class="process-1 mt-20 pt-100 pb-100" data-parallax="scroll" data-image-src="$ThemeDir/img/roll.jpg">
    <div class="container">
        <h2 class="heading inverse text-center">Our <span class="color2">Impact</span></h2>
        <div class="row">
            <div class="col-sm-6 col-md-3 process-box">
                <div class="process-round">
                    <span class="number">01.</span>
                    <p>A wonderful serenity has taken possession of my entire soul.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 process-box">
                <div class="process-round">
                    <span class="number">02.</span>
                    <p>A wonderful serenity has taken possession of my entire soul.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 process-box">
                <div class="process-round">
                    <span class="number">03.</span>
                    <p>A wonderful serenity has taken possession of my entire soul.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-3 process-box">
                <div class="process-round">
                    <span class="number">04.</span>
                    <p>A wonderful serenity has taken possession of my entire soul.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bgcolor3 pt-80">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="testimonials">
                    <% loop $Testimonials %>
                        <div class="testimonial-item">
                            <% if $AuthorImage %>
                                <img src="$AuthorImage.ReSample('350','520').URL" class="testimonial-img" alt="$AuthorImage.URL">
                            <% end_if %>
                            <div class="testimonial-text">
                                <p>$Quote</p>
                                <span class="testimonial-by">$Author</span>
                            </div>
                        </div>
                    <% end_loop %>
                </div>
                <div class="owl-nav">
                    <span class="owl-left"><i class="fa fa-angle-left"></i></span>
                    <span class="owl-right"><i class="fa fa-angle-right"></i></span>
                </div>
            </div>
        </div>
    </div>
</div>