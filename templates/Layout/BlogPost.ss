<div class="container-full page-banner-background">
  <div class="container page-banner">
    <h1>Blog</h1>
  </div>
</div>
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
        <% if BlogSideBar %>
        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
        <% else %>
        <div class="col-lg-12 col-md-12 col-sm-12">
        <% end_if %>
          <h1>$Title</h1>
          <hr/>
          $Content
          $Form
          <!-- Tags and Categories -->
          <p class="blog-post-meta">
            <% if $Categories.exists %>
              <%t Blog.PostedIn "Posted in" %>
              <% loop $Categories %>
                <a href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %>;<% end_if %>
              <% end_loop %>
            <% end_if %>
            <br/>
            <% if $Tags.exists %>
              Tags
              <% loop $Tags %>
                <a  href="$Link" title="$Title">$Title</a><% if not Last %>, <% else %>;<% end_if %>
              <% end_loop %>
            <% end_if %>
            <% if $Comments.exists %>
              <a href="{$Link}#comments-holder">
                <%t Blog.Comments "Comments" %>
                $Comments.count
              </a>;
            <% end_if %>
          </p>
          <p>
            <%t Blog.Posted "Posted" %> $PublishDate.ago

            <% if $Credits %>
                <%t Blog.By "by" %>
                <% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
            <% end_if %>
            <% if $Comments.exists %>
                 | <a href="{$Link}#comments-holder">
                    $Comments.count
                    <% if $Comments.count == 1 %>
                        <%t BlogEntry_ss.COMMENT 'Comment' %>
                    <% else %>
                        <%t Blog.Comments "Comments" %>
                    <% end_if %>
                </a>
            <% end_if %>
            <%-- Month archive link
            <a href="$MonthlyArchiveLink">View month archive</a> --%>
          </p>
          <hr/>
          </br>
          $CommentsForm
        </div>
      </div>
    </div>
  </div>
</div>
