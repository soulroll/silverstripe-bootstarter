<ul class="navigation-menu">
  <% loop $Menu(1) %>
    <li class="navigation-item <% if Children %>has-children<% end_if %>">
      <a class="navigation-link $LinkingMode" href="$Link">$MenuTitle.XML</a>
    </li>
    <% if Children %>
      <div class="navigation-megamenu-panel">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              <ul>

              </ul>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              test
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              test
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
              test
            </div>
          </div>
        </div>
      </div>
    <% end_if %>
  <% end_loop %>
</ul>
