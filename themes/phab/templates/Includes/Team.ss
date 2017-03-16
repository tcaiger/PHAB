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
                    </ul>
                    <% if $ProfileImage %>
                        <img src="$ProfileImage.ReSample('450','620').URL" class="teacher-img img-responsive" alt="">
                    <% else %>
                        <img src="$ThemeDir/img/profile-default.png" class="teacher-img img-responsive" alt="">
                    <% end_if %>
                    <div class="teacher-detail">
                        <h4 class="heading">$Name</h4>
                        <span class="position">$Position</span>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>
