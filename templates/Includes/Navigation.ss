<% if $SiteConfig.SiteNavigation != Right %>
<div id="navigation-wrapper" class="navigation-wrapper <% if $SiteConfig.SiteNavigation == Left %>navigation-left<% else_if $SiteConfig.SiteNavigation == Justified %>navigation-justified <% else_if $SiteConfig.SiteNavigation == Megamenu %>navigation-megamenu <% end_if %> d-print-none">
  <div class="navigation collapse" id="navigation">
    <div class="container navigation-container">
    <% if $SiteConfig.SiteNavigation == Megamenu %>
        <% include Megamenu %>
    <% else %>
        <% include Menu %>
    <% end_if %>
    <% if $SiteConfig.SiteNavigation != Justified %>
      <% if $SearchForm %>
      <div class="search-toggle-in-navigation-container">
        <button class="search-toggle search-toggle-in-navigation" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        </button>
        <div class="search-toggle-in-navigation-dropdown">
          $SearchForm
        </div>
      </div>
      <% end_if %>
    <% end_if %>
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<% end_if %>
