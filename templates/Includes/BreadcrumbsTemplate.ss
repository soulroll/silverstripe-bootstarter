<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<% if $Pages %>
  <ol class="breadcrumb">
    <% if InSection(home) %><% else %><li class="breadcrumb-item"><a href="home" class="breadcrumb-link">Home</a></li><% end_if %>
    <% loop $Pages %>
      <% if $Last %>
        <li class="breadcrumb-item">$MenuTitle.XML</li>
      <% else %>
        <li class="breadcrumb-item">
          <a href="$Link" alt="Go to $MenuTitle.XML page" class="breadcrumb-link $LinkingMode">
            $MenuTitle.XML
          </a>
        </li>
      <% end_if %>
    <% end_loop %>
  </ol>
<% end_if %>
