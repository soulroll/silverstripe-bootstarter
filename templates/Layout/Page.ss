<div class="container">
  <div class="row">
    <div class="col-lg-12">
    <% include Breadcrumbs %>
      <div class="jumbotron">
        <h1>$Title</h1>
        $Content
        $Form
      </div>
      <% if URLSegment = 'home' %>
        <% include KitchenSink %>
      <% end_if %>
    </div>
  </div>
</div>

