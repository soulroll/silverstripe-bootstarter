<% include PageBanner %>
<div class="container">
  <div class="page">
    <div class="row">
      <div class="col-lg-12">
        <% if $Query %>
          <p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
        <% end_if %>
        <% if $Results %>
          <ul class="search-results">
            <% loop $Results %>
              <li class="search-results-listing">
                <h4>
                  <a href="$Link">
                    <% if $MenuTitle %>
                      $MenuTitle
                      <% else %>
                        $Title
                      <% end_if %>
                    </a>
                  </h4>
                  <% if $Content %>
                      <p>$Content.LimitWordCountXML</p>
                  <% end_if %>
                  <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</a>
              </li>
            <% end_loop %>
          </ul>
        <% else %>
          <p>Sorry, your search query did not return any results.</p>
        <% end_if %>
        <% if $Results.MoreThanOnePage %>
        <nav aria-label="Page navigation">
          <ul class="pagination">
            <% if $Results.NotFirstPage %>
            <li class="page-item">
              <a class="page-link" href="$Results.PrevLink">Previous</a>
            </li>
            <% else %>
            <li class="page-item disabled">
              <span class="page-link">Previous</span>
            </li>
            <% end_if %>
            <% loop $Results.Pages %>
              <% if $CurrentBool %>
                <li class="page-item active">
                  <span class="page-link">
                    $PageNum
                    <span class="sr-only">(current)</span>
                  </span>
                </li>
              <% else %>
                <% if $Link %>
                  <li class="page-item"><a class="page-link" href="$Link">$PageNum</a></li>
                <% else %>
                  ...
                <% end_if %>
              <% end_if %>
            <% end_loop %>
            <% if $Results.NotLastPage %>
            <li class="page-item">
              <a class="page-link" href="$Results.NextLink">Next</a>
            </li>
            <% else %>
            <li class="page-item disabled">
              <span class="page-link">Next</span>
            </li>
            <% end_if %>
          </ul>
        </nav>
        <% end_if %>
      </div>
    </div>
  </div>
</div>

