<%-- Showcase logic for Bootstrap 4 --%>
<% if URLSegment != home %>
  <% include PageBanner %>
<% end_if %>
<%------------------------------------%>
<div class="container-full page-background">
  <div class="container">
    <div class="page">
      <div class="row">
        <% if $Menu(2) %>
          <% include SideBar %>
          <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
        <% else %>
          <div class="col-lg-12 col-md-12 col-sm-12">
            <% include Breadcrumbs %>
        <% end_if %>
          <%-- Showcase logic for Bootstrap 4 --%>
          <% if URLSegment = home %>
            <% include KitchenSink %>
          <% else %>
          <%--------------------------%>
            <div class="content">
              <% if $ElementalArea %>
                $ElementalArea
                $Content.RichLinks
              <% else %>
                $Content.RichLinks
              <% end_if %>
            </div>
            $Form
            <% if $SiteConfig.ShowPageFooterOptions %>
              <% include PageFooter %>
            <% end_if %>
          <% end_if %>
        </div>
      </div>
    </div>
  </div>
</div>
