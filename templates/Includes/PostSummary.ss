<div class="post-summary">
  <!-- Image -->
  <a class="post-image" href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
    $FeaturedImage.setWidth(795)
  </a>
  <!-- Heading -->
  <a href="$Link" title="<%t Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
    <h2>
    <% if $MenuTitle %>
      $MenuTitle
    <% else %>
      $Title
    <% end_if %>
    </h2>
  </a>
  <!-- Author -->
  <div class="post-author">
    <% if $Credits %>
      <%t Blog.By "by" %>
      <% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> <%t Blog.AND "and" %> <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
    <% end_if %>
  </div>
  <!-- Summary -->
  <% if $Summary %>
  <p>$Summary</p>
  <% else %>
  <p>$Excerpt</p>
  <% end_if %>
  <!-- Tags and Categories -->
  <p class="blog-post-meta">
    <% if $Tags.exists %>
      <% loop $Tags %>
        <a class="tag" href="$Link" title="$Title">$Title</a>
      <% end_loop %>
    <% end_if %>
    <% if $Comments.exists %>
      <a href="{$Link}#comments-holder">
        <%t Blog.Comments "Comments" %>
        $Comments.count
      </a>;
    <% end_if %>
  </p>
</div>
