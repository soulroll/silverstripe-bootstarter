<div class="megamenu-navigation">
  <% if $SearchForm %>
  <div class="site-search-mobile-container">
    <form action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded" class="site-search-mobile">
      <input class="form-control" type="text" placeholder="Search" name="Search">
      <button class="btn btn-outline-success site-search-btn" type="submit" name="action_results" id="SearchForm_SearchForm_action_results">Search</button>
    </form>
  </div>
  <% end_if %>
  <ul class="navigation-menu">
    <% loop $Menu(1) %>
      <li class="navigation-item <% if Children %>has-children<% end_if %>">
        <a class="navigation-link" href="$Link">$MenuTitle.XML</a>
        <% if Children %>
          <button class="navigation-link megamenu-btn" data-toggle="dropdown">$MenuTitle.XML</button>
          <div class="dropdown-menu megamenu-dropdown" aria-labelledby="navbarDropdownMenuLink">
            <div class="container">
              <div class="row">
                <div class="col">
                  <span class="megamenu-title">
                    $Title
                  </span>
                </div>
              </div>
              <div class="row">
                <% loop $Children %>
                <div class="col-xl-3 col-lg-4 col-md-4">
                  <ul class="megamenu-menu">
                    <li class="megamenu-item">
                      <a class="megamenu-link" href="$Link">$MenuTitle.XML</a>
                    </li>
                    <% loop $Children %>
                    <li class="megamenu-sublink-item">
                      <a class="megamenu-sublink-link" href="$Link">$MenuTitle.XML</a>
                    </li>
                    <% end_loop %>
                  </ul>
                </div>
                <% end_loop %>
              </div>
            </div>
          </div>
          <%-- Mobile Navigation --%>
          <button class="navigation-chevron collapsed" data-toggle="collapse" data-target="#navigation-submenu-$ID" aria-expanded="false" aria-controls="navigation-submenu-$ID"></button>
          <ul class="navigation-submenu collapse" id="navigation-submenu-$ID">
            <% loop $Children %>
              <li class="navigation-submenu-item">
                <a class="navigation-submenu-link" href="$Link">$MenuTitle.XML</a>
                <% if Children %>
                  <button class="navigation-chevron collapsed" data-toggle="collapse" data-target="#navigation-sub-submenu-$ID" aria-expanded="false" aria-controls="navigation-sub-submenu-$ID"></button>
                  <ul class="navigation-sub-submenu collapse" id="navigation-sub-submenu-$ID">
                    <% loop $Children %>
                      <li class="navigation-sub-submenu-item">
                        <a class="navigation-sub-submenu-link" href="$Link">$MenuTitle.XML</a>
                      </li>
                    <% end_loop %>
                  </ul>
                <% end_if %>
              </li>
            <% end_loop %>
          </ul>
        <% end_if %>
      </li>
    <% end_loop %>
  </ul>
</div>
