<div class="container-full page-banner-background">
  <div class="container page-banner">
    <h1>$Title</h1>
  </div>
</div>
<% if $SiteConfig.AlertToggle %>
<% with $SiteConfig %>
<div class="container">
  <div class="alert-page alert alert-$AlertType alert-dismissible fade show" role="alert">
    <strong>$AlertTitle</strong>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
</div>
<% end_with %>
<% end_if %>
