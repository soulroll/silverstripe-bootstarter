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
        <% if $Menu(2) %><div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"><% else %><div class="col-lg-12 col-md-12 col-sm-12"><% end_if %>
          $Content
          $Form
          <% include KitchenSink %>
          <div class="blog-footer mt-5">
            <span class="blog-last-modified">Last modified: {$LastEdited.Format(jS F Y)}</span>
            <a href="#" class="blog-print fa fa-print" onclick="window.print(); return false;">
              <span class="sr-only"><%t TableListField.Print "Print" %></span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
