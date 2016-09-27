<% include TopBanner %>


<div class="container mt-100 mb-20">
    <div class="row">
        <div class="col-sm-4">
            <div class="course-intro">
                <img src="$ThemeDir/images/course-single.jpg" class="img-responsive" alt="">
            </div>
        </div>
        <div class="col-sm-8">
            <div class="course-full">
                <h2 class="heading">Get Involved With PHAB</h2>
                <%--<div class="personal">--%>
                    <%--<div>--%>
                        <%--<span>Report Title</span>--%>
                        <%--<span>Financial Statement</span>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<span>Duration</span>--%>
                        <%--<span>12 Months</span>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<span>Year</span>--%>
                        <%--<span>2015</span>--%>
                    <%--</div>--%>
                    <%--<div>--%>
                        <%--<a href="#" class="btn btn-primary">Download PDF</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                <p>I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
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


<div class="cta-dark-full">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h3>Make a real difference. Get involved today.</h3>
                <br/><br/>
                <a href="$PageLink('ContactPage')" class="btn btn-primary">Contact Us &nbsp;&nbsp; <i class="fa fa-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>
