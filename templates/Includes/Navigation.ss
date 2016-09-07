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
            <li class="<% if LinkOrCurrent = current %>active<% end_if %> <% if Children %>dropdown<% end_if %>">
              <a href="$Link" title="$Title.XML" <% if Children %>class="dropdown-toggle" data-toggle="dropdown"<% end_if %>>
                $MenuTitle.XML <% if Children %><span class="caret"></span><% end_if %>
              </a>
              <% if Children %>
                <ul class="dropdown-menu">
                  <% loop Children %>
                    <li><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                  <% end_loop %>
                </ul>
              <% end_if %>
            </li>
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
