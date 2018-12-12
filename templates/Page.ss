<!doctype html>
<html class="no-js" lang="$ContentLocale">
  <head>
    <% base_tag %>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><% if $MetaTitle %>$MetaTitle.XML<% else %>$Title.XML<% end_if %> | $SiteConfig.Title.XML</title>
    <meta name="description" content="$SiteConfig.Title.XML">
    $MetaTags(false)
    <meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=10.0,initial-scale=1.0">
    <% if $RSSLink %>
    <link rel='alternate' type='application/rss+xml' title='RSS' href='$RSSLink'>
    <% end_if %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png"> <!-- To Do -->
    <link rel="stylesheet" type="text/css" href="resources/themes/silverstripe-bootstarter/dist/css/style.css">
  </head>
  <body class="$ClassName">
    <!--[if lte IE 9]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->
    <% include Header %>
    <% include Navigation %>
    <% include DemoTogglePanel %>
    <main role="main">
      $Layout
    </main>
    <% include Footer %>
    <script src="resources/themes/silverstripe-bootstarter/dist/js/main.min.js"></script>
  </body>
</html>
