<div class="page-header">
    <div class="container">
        <h1>$Title</h1>
        <ul class="breadcrumb">
            <% if $Parent.Title %>
                <li><a href="$Parent.Link">$Parent.Title</a></li>
            <% else %>
                <li><a href="$AbsoluteBaseURL">PHAB</a></li>
            <% end_if %>
            <li class="active">$Title</li>
        </ul>
    </div>
</div>