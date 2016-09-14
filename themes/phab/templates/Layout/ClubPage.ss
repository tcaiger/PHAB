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
                <ul class="social">
                    <li><a href="#"><i class=" fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class=" fa fa-twitter"></i></a></li>
                </ul>
                <div class="info">
                    <div>
                        <span>Event Location</span>
                        <span>$Location</span>
                    </div>
                    <div>
                        <span>Starting Time</span>
                        <span>$Time</span>
                    </div>
                    <div>
                        <span>Frequency</span>
                        <span>TBC</span>
                    </div>
                    <div>
                        <span>Band Performing</span>
                        <span>Slipknot</span>
                    </div>
                    <div>
                        <a href="contact.html" class="btn btn-primary">Sign Up!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="row mt-80 mb-40">
        <div class="col-sm-12">
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li role="presentation" class="active">
                    <a href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-futbol-o fa-fw"></i> Event Brief</a>
                </li>
                <li role="presentation" class="">
                    <a href="#t1body2" aria-controls="t1body2" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-university fa-fw"></i> Performers</a>
                </li>
                <li role="presentation" class="">
                    <a href="#t1body3" aria-controls="t1body3" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-map-marker fa-fw"></i> Locations</a>
                </li>
            </ul>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="t1body1">
                    <br>
                    $Content
                </div>
                <div role="tabpanel" class="tab-pane fade" id="t1body2">
                    <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                    <br/>
                    <ul class="list-styled">
                        <li>Single stroke at the present moment</li>
                        <li>Drawing a single stroke at the present moment</li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="t1body3">
                    <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                    <br/>
                    <ul class="list-styled">
                        <li>Single stroke at the present moment</li>
                        <li>Drawing a single stroke at the present moment</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <h3 class="heading text-center">Participate Now!</h3>
        <form>
            <div class="col-sm-4">
                <div class="form-group">
                    <input id="contact-name" type="text" class="form-control">
                    <label for="contact-name">Your Name</label>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <input id="contact-email" type="text" class="form-control">
                    <label for="contact-email">Email ID</label>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <input id="contact-number" type="text" class="form-control">
                    <label for="contact-number">Phone Number</label>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="form-group">
                    <textarea id="contact-message" class="form-control" rows="6"></textarea>
                    <label for="contact-message">Your Message</label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary center-block">Send Query</button>
        </form>
    </div>
</div>