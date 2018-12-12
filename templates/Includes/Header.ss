<header role="banner">
  <div class="container">
    <div class="row">
      <div class="col">
        <% if $SiteConfig.SiteLogo %>
          <a href="$BaseHref" class="logo" rel="home">
            <% with $SiteConfig %>
              $SiteLogo.ScaleWidth(187)
            <% end_with %>
          </a>
        <% else %>
          <a href="$BaseHref" class="logo" rel="home">
            <h1 class="site-title">$SiteConfig.Title</h1>
            <% if $SiteConfig.Tagline %>
              <p class="site-tagline">$SiteConfig.Tagline</p>
            <% end_if %>
          </a>
        <% end_if %>
        <button class="navigation-toggle d-print-none <% if $SiteConfig.SiteNavigation == Left %>navigation-toggle-left<% else_if $SiteConfig.SiteNavigation == Justified %>navigation-toggle-justified<% else_if $SiteConfig.SiteNavigation == Right %>navigation-toggle-right<% else_if $SiteConfig.SiteNavigation == Megamenu %>navigation-toggle-megamenu<% end_if %>" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-controls="navigation">
        </button>
        <% if $SiteConfig.SiteNavigation == Right %>
        <div class="navigation-desktop-right">
          <ul class="navigation-desktop-right-menu">
            <% loop $Menu(1) %>
              <li class="navigation-desktop-right-item <% if Children %>navigation-desktop-right-item-has-children<% end_if %>">
                <a class="navigation-desktop-right-link $LinkingMode" href="$Link">$MenuTitle.XML</a>
                <% if Children %>
                <ul class="navigation-desktop-right-submenu navigation-desktop-right-submenu-hover-triangle">
                  <% loop $Children %>
                    <li class="navigation-desktop-right-submenu-item">
                      <a class="navigation-desktop-right-submenu-link $LinkingMode" href="$Link">$MenuTitle.XML</a>
                    </li>
                  <% end_loop %>
                </ul>
                <% end_if %>
              </li>
            <% end_loop %>
          </ul>
        </div>
        <% else %>
          <% if $SiteConfig.HeaderContactDetail %>
          <ul class="contact-info">
            <% loop $SiteConfig.HeaderContactDetail %>
              <% if $Number %>
                <li>
                  <i class="fa fa-phone"></i> $Number
                </li>
              <% end_if %>
              <% if $Email %>
                <li>
                  <a class="contact-info-email" title="Contact us by email" href="mailto:$Email">
                    <i class="fa fa-envelope"></i> Email us
                  </a>
                </li>
              <% end_if %>
            <% end_loop %>
          </ul>
          <% end_if %>
        <% end_if %>
      </div>
    </div>
  </div>
</header>
<% if $SiteConfig.SiteNavigation == Right %>
<div class="navigation-mobile-right">
  <div class="navigation collapse" id="navigation">
    <div class="container">
      <% include Menu %>
    </div>
  </div>
</div>
<% end_if %>
