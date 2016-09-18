<% include TopBanner %>

<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="heading text-center">$SubHeading
                <span class="sub-heading">$Intro</span>
                <span class="icon-divider"></span>
            </h2>
        </div>
        <% loop $GalleryImages.Sort('SortOrder') %>
            <div class="col-md-4">
                <div class="gallery-card">
                    <a href="$Image.URL" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                    <img src="$Image.ReSample('770','640').URL" class="img-responsive" alt="">
                </div>
            </div>
        <% end_loop %>
    </div>
</div>