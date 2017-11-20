<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<% if $Pages %>
  <% loop $Pages %><% if $Last %><li class="breadcrumb-item active" aria-current="page">$MenuTitle.XML</li><% else %><li class="breadcrumb-item"><a href="$Link">$MenuTitle.XML</a></li><% end_if %><% end_loop %>
<% end_if %>
