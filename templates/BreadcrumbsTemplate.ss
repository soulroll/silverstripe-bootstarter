<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<% if $Pages %>
  <ol class="breadcrumb">
    <li><a href="home">Home</a></li>
    <% loop $Pages %>
      <% if $Last %>
        <li>$MenuTitle.XML</li>
      <% else %>
        <li>
          <a href="$Link" alt="Go to $MenuTitle.XML page" class="breadcrumb-$Pos $LinkingMode <% if $ID == $Top.Parent.ID %>bold<% end_if %>">
            $MenuTitle.XML
          </a>
        </li>
      <% end_if %>
    <% end_loop %>
  </ol>
<% end_if %>
