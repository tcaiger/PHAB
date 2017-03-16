<div class="container mt-100 mb-40">
    <div class="row">
        <div class="col-sm-12">
            <h3 class="heading">An <span class="color2">Introduction</span></h3>
        </div>
        <% if $SideImage.URL %>
            <div class="col-sm-6 col-sm-push-6">
                <img class="t-side-image img-responsive" src="$SideImage.ScaleWidth('520').URL">
            </div>
        <% end_if %>
        <div class="col-sm-6 col-sm-pull-6">
            <div class="t-page-content">
                <p class="lead">$PageIntro</p>
                $Content
            </div>
        </div>
    </div>
</div>