<div class="container mt-100 mb-100">
    <h2 class="heading text-center">Album Scroll on <span class="color2">Hover</span>
        <span class="sub-heading">EDUComp is a fully responsive premium education theme for schools, colleges, insitutions and universities.</span>
        <span class="icon-divider"></span>
    </h2>
    <div class="row">
        <% loop $Children %>
            <div class="col-sm-4">
                <div class="album-card">
                    <a href="$Link">
                        <h4>$Title</h4>
                            <img src="$GalleryImages.First.Image.URL" class="img-responsive" alt="">
                        <%--<div class="img-rotate">            <!-- Replace with your images. Can be more than 3 -->--%>
                            <%--<img src="images/gallery/food/food-1-thumb.jpg" class="img-responsive" alt="">--%>
                            <%--<img src="images/gallery/food/food-2-thumb.jpg" class="img-responsive" alt="">--%>
                            <%--<img src="images/gallery/food/food-3-thumb.jpg" class="img-responsive" alt="">--%>
                        <%--</div>--%>
                    </a>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>