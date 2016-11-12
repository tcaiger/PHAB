<% include TopBanner %>

<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-8">
            <h3 class="heading">An <span class="color2">Introduction</span></h3>
            <p class="lead">$PageIntro</p>
            <div class="text-justify">
                $Content
            </div>
        </div>
        <% if $SideImage.URL %>
            <div class="col-sm-4">
                <aside class="applynow-widget">
                    <img src="$SideImage.ReSample('360','320').URL">
                </aside>
            </div>
        <% end_if %>
    </div>
</div>

<div class="clearfix"></div>

<div class="pt-100 pb-80 bgcolor2">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="icon-box-3">            <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-bullseye" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">$V1Heading</h5>
                        <span class="inverse">$V1Text</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="icon-box-3">            <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-crosshairs" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">$V2Heading</h5>
                        <span class="inverse">$V2Text</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="icon-box-3">            <!-- ***** Icon Box Style 3 ***** -->
                    <div class="icon-box-icon">
                        <i class="fa fa-book" aria-hidden="true"></i>
                    </div>
                    <div class="icon-box-content">
                        <h5 class="heading">$V3Heading</h5>
                        <span class="inverse">$V3Text</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="clearfix"></div>

<div class="container mt-100 mb-80">
    <div class="row">
        <h2 class="heading text-center">Meet The PHAB <span class="color2">Team</span>
            <span class="sub-heading">$SectionIntro</span>
            <span class="icon-divider"></span>
        </h2>
        <% loop $Profiles %>
            <div class="col-sm-4">
                <div class="teacher-card">
                    <ul class="social-links">
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                        <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                    <% if $ProfileImage %>
                        <img src="$ProfileImage.ReSample('450','620').URL" class="teacher-img img-responsive" alt="">
                    <% else %>
                        <img src="$ThemeDir/img/profile-default.png" class="teacher-img img-responsive" alt="">
                    <% end_if %>
                    <%--<a href="teacher-profile.html" class="teacher-link">View Profile</a>--%>
                    <div class="teacher-detail">
                        <h4 class="heading">$Name</h4>
                        <span class="position">$Position</span>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>

<%--<div class="clearfix"></div>--%>

<%--<div class="bgcolor3 pt-100 pb-100">--%>
<%--<div class="container">--%>
<%--<div class="col-md-12">--%>
<%--<div class="logo-scroll">--%>
<%--<img src="$ThemeDir/images/logo-1.png" alt="">--%>
<%--<img src="$ThemeDir/images/logo-2.png" alt="">--%>
<%--<img src="$ThemeDir/images/logo-3.png" alt="">--%>
<%--<img src="$ThemeDir/images/logo-4.png" alt="">--%>
<%--<img src="$ThemeDir/images/logo-5.png" alt="">--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>