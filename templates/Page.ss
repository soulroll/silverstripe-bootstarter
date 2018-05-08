<!DOCTYPE html>
<html class="no-js" lang="en-us">
  <head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta content="" name="description">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!--[if IE 11><meta http-equiv="X-UA-Compatible" content="IE=10"><![endif]-->
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" type="text/css" href="resources/themes/silverstripe-bootstarter/dist/css/style.css">
  </head>
  <body>
    <% include Header %>
    <% include Navigation %>
    <main role="main">
      $Layout
    </main>
    <% include Footer %>
    <script src="resources/themes/silverstripe-bootstarter/dist/js/main.min.js"></script>
  </body>
</html>
