<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <% include Breadcrumbs %>
    </div>
    <% if $Menu(2) %>
      <div class="col-lg-3">
        <% include SideBar %>
      </div>
    <% end_if %>
    <% if $Menu(2) %>
      <div class="col-lg-9">
    <% else %>
      <div class="col-lg-12">
    <% end_if %>
        <h1>$Title</h1>
        $Content
        $Form
        <% if URLSegment = 'home' %>
          <% include KitchenSink %>
        <% end_if %>
      </div>
  </div>
</div>
