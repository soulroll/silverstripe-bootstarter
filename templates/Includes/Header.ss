<header role="banner">
  <div class="container">
    <div class="row">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <a href="$BaseHref" class="logo" rel="home">
          <h1 class="site-title">$SiteConfig.Title</h1>
          <% if $SiteConfig.Tagline %>
            <p class="site-tagline">$SiteConfig.Tagline</p>
          <% end_if %>
        </a>
        <% if $SearchForm %>
          <div role="search">
            <form action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded" class="form-inline site-search">
              <input class="form-control" type="text" placeholder="Search" name="Search">
              <button class="btn btn-outline-success site-search-btn" type="submit" name="action_results" id="SearchForm_SearchForm_action_results">Search</button>
            </form>
          </div>
        <% end_if %>
        <button class="navigation-toggle d-print-none" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-controls="navigation">
        </button>
      </div>
    </div>
  </div>
</header>
