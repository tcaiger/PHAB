<% include InfoSection %>

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


<div class="cta-light-full" style="background-image: url('$ThemeDir/img/cta-background.png')">
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
