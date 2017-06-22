<div class="container-full page-banner-background">
  <div class="container page-banner">
    <h1>$Title</h1>
  </div>
</div>
<div class="container-full page-background">
  <div class="container">
    <div class="page">
      <% include ForumHeader %>
      $Content
      <div id="UserProfile">
        <% if $CurrentMember %>
          <p><% _t('ForumMemberProfile_register_ss.PLEASELOGOUT', 'Please logout before you register') %> - <a href="Security/logout"><% _t('ForumMemberProfile_register_ss.LOGOUT', 'Logout') %></a></p>
        <% else %>
          $RegistrationForm
        <% end_if %>
      </div>
      <% include ForumFooter %>
    </div>
  </div>
</div>
