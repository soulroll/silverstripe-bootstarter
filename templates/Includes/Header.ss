<header role="banner">
  <div class="container">
    <a href="$BaseHref" class="logo" rel="home">
      <h1 class="site-title">$SiteConfig.Title</h1>
      <% if $SiteConfig.Tagline %>
        <p class="site-tagline">$SiteConfig.Tagline</p>
      <% end_if %>
    </a>
    <% if CurrentMember %>
      <a class="admin-login" href="Security/logout">
        <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout
      </a>
    <% else %>
      <a class="admin-login" href="admin">
        <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login
      </a>
    <% end_if %>
  </div>
</header>
