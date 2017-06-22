<div class="bg-inverse">
  <div class="container">

    <nav class="navbar navbar-inverse bg-inverse navbar-toggleable-md">

      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExampleContainer" aria-controls="navbarsExampleContainer" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-collapse collapse" id="navbarsExampleContainer" aria-expanded="false">
        <ul class="navbar-nav mr-auto">
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
