<footer class="d-print-none">
  <div class="container-full footer-secondary">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-12 col-12">
          <% if $SiteConfig.FooterLink %>
          <ul class="footer-links">
            <% loop $SiteConfig.FooterLink %>
              <li><a href="$PageLink.Link" target="_blank" rel="noopener noreferrer">$Title</a></li>
            <% end_loop %>
          </ul>
          <% end_if %>
          <p class="footer-copyright">&copy; Copyright Company</p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-12">
          <ul class="footer-social-media">
            <% if $SiteConfig.SiteVimeo %>
            <li><a class="vimeo" href="$SiteConfig.SiteVimeo" target="_blank" rel="noopener noreferrer"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteYoutube %>
            <li><a class="youtube" href="$SiteConfig.SiteYoutube" target="_blank" rel="noopener noreferrer"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteInstagram %>
            <li><a class="instagram" href="$SiteConfig.SiteInstagram" target="_blank" rel="noopener noreferrer"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteGooglePlus %>
            <li><a class="google" href="$SiteConfig.SiteGooglePlus" target="_blank" rel="noopener noreferrer"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteLinkedin %>
            <li><a class="linkedin" href="$SiteConfig.SiteLinkedin" target="_blank" rel="noopener noreferrer"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteTwitter %>
            <li><a class="twitter" href="$SiteConfig.SiteTwitter" target="_blank" rel="noopener noreferrer"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteFacebook %>
            <li><a class="facebook" href="$SiteConfig.SiteFacebook" target="_blank" rel="noopener noreferrer"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <% end_if %>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
<a href="javascript:void(0);" class="back-to-top" title="Scroll to Top">
  <i class="fa fa-chevron-up" aria-hidden="true"></i>
</a>
