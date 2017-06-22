<div class="container-full page-banner-background">
  <div class="container page-banner">
    <% if $ArchiveYear %>
      <%t Blog.Archive 'Archive' %>:
      <% if $ArchiveDay %>
        $ArchiveDate.Nice
      <% else_if $ArchiveMonth %>
        $ArchiveDate.format('F, Y')
      <% else %>
        $ArchiveDate.format('Y')
      <% end_if %>
    <% else_if $CurrentTag %>
      <%t Blog.Tag 'Tag' %>: <h1>$CurrentTag.Title</h1>
    <% else_if $CurrentCategory %>
      <%t Blog.Category 'Category' %>: <h1>$CurrentCategory.Title</h1>
    <% else %>
      <h1>$Title</h1>
    <% end_if %>
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
          $Content
          <% if $PaginatedList.Exists %>
            <% loop $PaginatedList %>
              <% include PostSummary %>
            <% end_loop %>
          <% else %>
            <p><%t Blog.NoPosts 'There are no posts' %></p>
          <% end_if %>
          $Form
          $CommentsForm
          <% with $PaginatedList %>
            <% include Pagination %>
          <% end_with %>
          <div class="blog-footer">
            <span class="blog-last-modified">Last modified: {$LastEdited.Format(jS F Y)}</span>
            <a href="#" class="blog-print fa fa-print" onclick="window.print(); return false;">
              <span class="sr-only"><%t TableListField.Print "Print" %></span>
            </a>
          </div>
        </div>
        <% if BlogSideBar %>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
          <% include BlogSideBar %>
        </div>
        <% end_if %>
      </div>
    </div>
  </div>
</div>
