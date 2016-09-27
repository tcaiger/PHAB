<% include TopBanner %>


<div class="container mt-100 mb-40">
    <div class="row">
        <div class="col-sm-4">
            <div class="course-intro">
                <img src="$IntroImage.ReSample('770','770').URL" class="img-responsive mb-15" alt="">
            </div>
        </div>
        <div class="col-sm-8">
            <div class="course-full">
                <h2 class="heading">$PageHeading</h2>
                <div class="personal">
                    <div>
                        <span>Document Title</span>
                        <span>PHAB Brochure</span>
                    </div>
                    <div>
                        <span>Duration</span>
                        <span>12 Months</span>
                    </div>
                    <div>
                        <span>Year</span>
                        <span>2016</span>
                    </div>
                    <div>
                        <a href="$Document.URL" target="_blank" class="btn btn-primary">Download PDF</a>
                    </div>
                </div>
                $Content
            </div>
        </div>
    </div>
    <div class="row mt-60">
        <div class="col-sm-4">
            <label>PHAB Members</label>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                    156
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <label>Clubs In New Zealand</label>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                    82
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <label>Volunteers and Mentors</label>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                    63
                </div>
            </div>
        </div>
    </div>
</div>

<div class="clearfix"></div>


<div class="container pt-40 pb-100">
    <h2 class="heading text-center">A Big Thank You To All <span class="color2">Our Funders</span></h2>
    <div class="row">
        <% loop $Logos.Sort('SortOrder') %>
            <div class="col-md-4 col-sm-6">
                <div class="icon-box-2">
                    <div class="icon-box-icon">
                        <img src="$Logo.PHABPad('250', '100').URL">
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>


<div class="cta-light-full cta-tint" style="background-image: url('$ThemeDir/img/cta-background.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center cta-content">
                <h3>Make a difference. Get involved today.</h3>
                <br/><br/>
                <a href="$PageLink('ContactPage')" class="btn btn-primary">Contact Us &nbsp;&nbsp; <i class="fa fa-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>
