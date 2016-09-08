<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <header role="banner">
        <div class="pull-left">
          <a href="$BaseHref" class="brand" rel="home">
            <h1>$SiteConfig.Title</h1>
            <% if $SiteConfig.Tagline %>
            <p>$SiteConfig.Tagline</p>
            <% end_if %>
          </a>
        </div>
        <div class="pull-right" style="margin-top:35px;">
          <% if CurrentMember %>
            <a href="Security/logout" class="pull-right">Logout</a>
          <% else %>
            <a href="admin">Login</a>
          <% end_if %>
        </div>
      </header>
    </div>
  </div>
</div>
