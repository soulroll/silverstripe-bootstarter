<% include PageBanner %>
<div class="container-full page-background">
  <div class="container">
    <div class="page">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class="breadcrumbs">
            <% include Breadcrumbs %>
          </div>
        </div>
      </div>
      <div class="row">
        <% if $Menu(2) %>
          <% include SideBar %>
        <% end_if %>
        <% if $Menu(2) %>
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
        <% else %>
        <div class="col-lg-12 col-md-12 col-sm-12">
        <% end_if %>
          $Content
          $Form

          <% if URLSegment = 'home' %>
            <% include KitchenSink %>
          <% end_if %>

          <% include PageFooter %>
        </div>
      </div>
    </div>
  </div>
</div>
