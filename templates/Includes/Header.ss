<div class="header-background">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <header role="banner">
          <div class="logo">
            <a href="$BaseHref" class="brand" rel="home">
              <h1 class="site-title">$SiteConfig.Title</h1>
              <% if $SiteConfig.Tagline %>
                <p class="site-tagline">$SiteConfig.Tagline</p>
              <% end_if %>
            </a>
          </div>
          <div class="pull-rights hidden-xs">
            <% if CurrentMember %>
              <a class="admin-login" href="Security/logout" class="pull-right">
                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout
              </a>
            <% else %>
              <a class="admin-login" href="admin">
                <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login
              </a>
            <% end_if %>
          </div>
        </header>
      </div>
    </div>
  </div>
</div>
