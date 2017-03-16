<div class="row mt-80 mb-40">
    <div class="col-sm-12">
        <ul class="nav nav-tabs nav-justified" role="tablist">
            <li role="presentation" class="active">
                <a href="#t1body1" aria-controls="t1body1" role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-futbol-o fa-fw"></i> Club Info</a>
            </li>
            <% if $MoreDetails %>
                <li role="presentation" class="">
                    <a href="#t1body2" aria-controls="t1body2" role="tab" data-toggle="tab" aria-expanded="false"><i class="fa fa-university fa-fw"></i> More Details</a>
                </li>
            <% end_if %>
        </ul>

        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade in active" id="t1body1">
                <br>
                $Content
            </div>
            <% if $MoreDetails %>
                <div role="tabpanel" class="tab-pane fade" id="t1body2">
                    $MoreDetailsContent
                </div>
            <% end_if %>
        </div>
    </div>
</div>