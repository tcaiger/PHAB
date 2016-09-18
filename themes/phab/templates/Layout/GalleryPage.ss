<% include TopBanner %>

<div class="container mt-100 mb-100">
    <div class="row">
        <div class="col-sm-12">
            <h2 class="heading text-center">Good Times At <span class="color2">PHAB</span>
                <span class="sub-heading">Lorem ipsum dolor sit amet, consectetur adipisicing elit. At nihil similique ullam!</span>
                <span class="icon-divider"></span>
            </h2>
        </div>
        <% loop $GalleryImages %>
            <div class="col-md-4">
                <div class="gallery-card">
                    <a href="$Image.URL" data-gal="prettyPhoto[galleryName]" class="img-zoom"><i class="fa fa-search"></i></a>
                    <img src="$Image.ReSample('770','640').URL" class="img-responsive" alt="">
                </div>
            </div>
        <% end_loop %>
    </div>
</div>