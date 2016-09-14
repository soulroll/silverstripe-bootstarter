<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="row">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <% loop $Menu(1) %>
            <% if Children %>
              <li class="<% if LinkOrCurrent = current %>active<% end_if %> dropdown-item" title="$Title.XML">
                <a class="dropwdown-link" href="$Link" >
                  $MenuTitle.XML
                </a>
                <span class="glyphicon glyphicon-menu-down dropdown-chevron" aria-hidden="true" data-toggle="dropdown"></span>
                <ul class="dropdown-menu">
                  <% loop Children %>
                    <li><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                  <% end_loop %>
                </ul>
              </li>
            <% else %>
              <li class="<% if LinkOrCurrent = current %>active<% end_if %>">
                <a href="$Link" title="$Title.XML">
                  $MenuTitle.XML
                </a>
              </li>
            <% end_if %>
          <% end_loop %>
        </ul>
        <% if $SearchForm %>
          <form class="navbar-form navbar-right" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search" name="Search">
            </div>
            <button type="submit" class="btn btn-default" name="action_results" value="Search" id="SearchForm_SearchForm_action_results">Search</button>
          </form>
        <% end_if %>
      </div>
    </div>
  </div>
</nav>
