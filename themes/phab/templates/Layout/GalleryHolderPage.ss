<div class="container mt-100 mb-100">
    <h2 class="heading text-center">A Collection Of Photo <span class="color2">Albums</span>
        <span class="sub-heading">Click on the images below to browse the album.</span>
        <span class="icon-divider"></span>
    </h2>
    <div class="row">
        <% loop $Children.Sort('SortOrder') %>
            <div class="col-sm-4">
                <div class="album-card">
                    <a href="$Link">
                        <h4>$Title</h4>
                        <img src="$CoverImage.Image.ReSample('770', '640').URL" class="img-responsive" alt="">
                    </a>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>