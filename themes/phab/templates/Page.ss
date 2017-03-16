<!DOCTYPE html>
<html lang="en">

<head>
    <% base_tag %>
    <% if $ClassName = "HomePage" %>
        <title>PHAB - providing social experiences for young people with disabilities</title>
    <% else %>
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> $SiteConfig.Title</title>
    <% end_if %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" href="$ThemeDir/icons/favicon.ico">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>

<body class="$ClassName">

    <% include Header %>
    <% if $ClassName != 'HomePage' %>
        <% include TopBanner %>
    <% end_if %>

    $Layout

    <% include Footer %>

<div id="fb-root"></div>
<script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

</body>
</html>
