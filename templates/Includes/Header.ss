    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home">Bootstrap theme</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <% loop $Menu(1) %>
                <li<% if LinkOrCurrent = current %> class="active"<% end_if %>><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
            <% end_loop %>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
