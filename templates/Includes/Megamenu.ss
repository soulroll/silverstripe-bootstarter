<ul class="navigation-menu">
  <% loop $Menu(1) %>
    <li class="navigation-item <% if Children %>has-children<% end_if %>">
      <a class="navigation-link $LinkingMode" href="$Link">$MenuTitle.XML</a>
      <div class="navigation-megamenu-panel">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-4">
              <h3><a href="$Link">$MenuTitle.XML</a></h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu nisi eu ex venenatis semper eu et sapien.</p>
            </div>
            <div class="col-lg-8 col-md-8">
              <ul class="navigation-megamenu-menu row">
              <% loop $Children %>
                <div class="col-lg-4 col-md-4">
                  <li class="navigation-megamenu-item"><a href="$Link">$MenuTitle.XML</a></li>
                </div>
              <% end_loop %>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </li>
  <% end_loop %>
</ul>
