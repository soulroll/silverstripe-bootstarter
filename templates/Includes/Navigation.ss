<% if $SiteConfig.SiteNavigation != Right %>
<div id="navigation-wrapper" class="navigation-wrapper <% if $SiteConfig.SiteNavigation == Left %>navigation-left<% else_if $SiteConfig.SiteNavigation == Justified %>navigation-justified<% end_if %>">
  <div class="navigation collapse" id="navigation">
    <div class="container navigation-container">
    <% include Menu %>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<% end_if %>
