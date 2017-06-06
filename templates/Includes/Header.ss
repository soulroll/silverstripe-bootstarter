<header role="banner">
  <div class="container">
    <a href="$BaseHref" class="logo" rel="home">
      <h1 class="site-title">$SiteConfig.Title</h1>
      <% if $SiteConfig.Tagline %>
        <p class="site-tagline">$SiteConfig.Tagline</p>
      <% end_if %>
    </a>
    <% if $SearchForm %>
      <form class="navbar-form-desktop navbar-form navbar-right" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search" name="Search">
        </div>
        <button type="submit" class="btn btn-default" name="action_results" value="Search" id="SearchForm_SearchForm_action_results">Search</button>
      </form>
    <% end_if %>
  </div>
</header>
