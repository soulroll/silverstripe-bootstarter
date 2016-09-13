<div class="container">
  <div class="page">
    <div class="row">
      <% include Breadcrumbs %>
    </div>
    <div class="row">
      <% if $Menu(2) %>
        <% include SideBar %>
      <% end_if %>
      <% if $Menu(2) %><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><% else %><div class="col-lg-12 col-md-12 col-sm-12"><% end_if %>
        $Content
        $Form
        <% include KitchenSink %>
      </div>
    </div>
  </div>
</div>
