<% if $Menu(2) %>
  <div class="col-lg-3 col-md-3 col-sm-3">
    <% with $Level(1) %>
      <ul class="sidebar">
        <% include SidebarMenu %>
      </ul>
    <% end_with %>
  </div>
<% end_if %>
