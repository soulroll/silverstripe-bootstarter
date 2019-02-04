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
          <% if $SiteConfig.SiteCopyright %><p class="footer-copyright"><span class="copyright-symbol">&copy;</span> $SiteConfig.SiteCopyright</p><% end_if %>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-12">
          <ul class="footer-social-media">
            <% if $SiteConfig.SiteVimeo %>
            <li><a class="vimeo" href="https://www.vimeo.com/$SiteConfig.SiteVimeo" target="_blank" rel="noopener noreferrer"><i class="fab fa-vimeo" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteYoutube %>
            <li><a class="youtube" href="https://www.youtube.com/$SiteConfig.SiteYoutube" target="_blank" rel="noopener noreferrer"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteInstagram %>
            <li><a class="instagram" href="https://www.linkedin.com/$SiteConfig.SiteInstagram" target="_blank" rel="noopener noreferrer"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteLinkedin %>
            <li><a class="linkedin" href="https://www.linkedin.com/$SiteConfig.SiteLinkedin" target="_blank" rel="noopener noreferrer"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteTwitter %>
            <li><a class="twitter" href="https://twitter.com/$SiteConfig.SiteTwitter" target="_blank" rel="noopener noreferrer"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
            <% end_if %>
            <% if $SiteConfig.SiteFacebook %>
            <li><a class="facebook" href="https://facebook.com/$SiteConfig.SiteFacebook" target="_blank" rel="noopener noreferrer"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
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
