<% include TopBanner %>

<div class="container mt-100 mb-40">
    <div class="row">
        <div class="col-sm-7">
            <h3 class="heading">An <span class="color2">Introduction</span></h3>
            <p class="lead">$PageIntro</p>
            $Content
        </div>
        <% if $M1Year && $M1Month && $M1Heading %>
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
        <% end_if %>
    </div>
</div>

<div class="clearfix"></div>

<div class="bgcolor2 mt-100">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 motto">
                <%--<img src="$ThemeDir/images/motto.png" class="motto-img hidden-xs" alt="">--%>
                <p class="motto-text">$Blockquote</p>
            </div>
        </div>
    </div>
</div>


<% if $IncludeTestimonials %>
    <div class="bgcolor3 pt-80">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="testimonials">
                        <% loop $Testimonials %>
                            <div class="testimonial-item">
                                <% if $AuthorImage %>
                                    <img src="$AuthorImage.ReSample('350','520').URL" class="testimonial-img" alt="$AuthorImage.URL">
                                <% else %>
                                    <img src="$ThemeDir/images/testi-2.png" class="testimonial-img" alt="">
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
<% end_if %>