<!DOCTYPE html>
<!--[if lte IE 8]>    <html lang="$ContentLocale" class="ie8 lt9 lt10"><![endif]-->
<!--[if IE 9]>        <html lang="$ContentLocale" class="ie9 lt10"><![endif]-->
<!--[if gt IE 9]><!--><html lang="$ContentLocale"><!--<![endif]-->
  <head>
    <% base_tag %>
    <title>$Title / $SiteConfig.Title</title>
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <!--[if IE 11><meta http-equiv="X-UA-Compatible" content="IE=10"><![endif]-->
    <%-- For Facebook preview --%>
    <meta property="og:url" content="{$AbsoluteLink}" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{$SiteConfig.Title} – {$Title}" />
    <meta property="og:description" content="{$Intro}" />
    <meta property="og:image" content="{$SiteConfig.LogoRetina.URL}" />
    $MetaTags(false) $ShareMetaTags
    <% if SiteConfig.FavIcon %>
    	<link rel="shortcut icon" href="$SiteConfig.FavIcon.AbsoluteURL" />
    <% end_if %>
    <% require themedCSS("style") %>
  </head>
  <body>
    <% include Header %>
    $Layout
    <% include Footer %>
    <script src="$ThemeDir/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="$ThemeDir/js/app.bundle.js"></script>
  </body>
</html>
