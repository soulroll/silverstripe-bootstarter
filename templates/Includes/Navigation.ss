<!--
<div class="bg-inverse">
  <div class="container">
    <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExampleContainer" aria-controls="navbarsExampleContainer" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse collapse" id="navbarsExampleContainer" aria-expanded="false">
        <ul class="navbar-nav">
          <% loop $Menu(1) %>
          <li class="nav-item">
            <a class="nav-link <% if First %>first<% end_if %> <% if First %>last<% end_if %>" href="$Link">$MenuTitle.XML</a>
          </li>
          <% end_loop %>
        </ul>
        <% if $SearchForm %>
        <form class="form-inline my-2 my-md-0 hidden-lg-up">
          <input class="form-control mr-sm-2" type="text" placeholder="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <% end_if %>
      </div>
    </nav>
  </div>
</div>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
  Link with href
</a>

<div class="collapse" id="collapseExample">
  <div class="container-full justified-navigation-background">
    <div class="container justified-navigation-container">
      <div class="justified-navigation">
        <ul>
          <% loop $Menu(1) %>
            <li>
              <a class="justified-navigation-link <% if Children %>has-subcategory<% end_if %>" href="$Link">$MenuTitle.XML</a>
              <% if Children %>
                <span class="dropdown-chevron-mobile"></span>
              <% end_if %>
            </li>
          <% end_loop %>
        </ul>
      </div>
    </div>
  </div>
</div>
-->

<!--
<nav class="navigation" id="demo" class="collapse">

  <div class="container navigation-container">
    <div class="justified-navigation">
      <ul class="justified-navigation-menu">
        <% loop $Menu(1) %>
          <li class="navigation-item">
            <a class="navigation-link <% if Children %>has-subcategory<% end_if %>" href="$Link">$MenuTitle.XML</a>
            <% if Children %>
              <a href="#" class="navigation-dropdown-chevron"></a>
              <ul class="navigation-submenu">
                <% loop $Children %>
                  <li class="navigation-submenu-item">
                    <a class="navigation-submenu-link" href="$Link">$MenuTitle.XML</a>
                  </li>
                <% end_loop %>
              </ul>
            <% end_if %>
          </li>
        <% end_loop %>
      </ul>
    </div>
  </div>

</nav>
-->




<div class="navigation collapse" id="navigation">
  <div class="container navigation-container">

      <div class="justified-navigation">

<!--  <div class="left-navigation"> -->

      <ul class="navigation-menu">
        <% loop $Menu(1) %>
          <li class="navigation-item">
            <a class="navigation-link <% if Children %>has-children<% end_if %>" href="$Link">$MenuTitle.XML</a>
            <% if Children %>
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

  </div>
</div>
