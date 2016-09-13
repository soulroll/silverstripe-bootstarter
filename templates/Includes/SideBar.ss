<% if $Menu(2) %>
  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 hidden-xs">
    <% with $Level(1) %>
      <ul class="sidebar">
        <% include SidebarMenu %>
      </ul>
    <% end_with %>
  </div>
<% end_if %>
