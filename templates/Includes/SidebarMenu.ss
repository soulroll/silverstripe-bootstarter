<%-- Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
  <% if $Children %>
    <% loop $Children %>
      <li>
        <a class="$LinkingMode" href="$Link" title="Go to the $Title.XML page">
          <span class="text">$MenuTitle.XML</span>
        </a>
        <% if $Children %>
          <ul>
            <% include SidebarMenu %>
          </ul>
        <% end_if %>
      </li>
    <% end_loop %>
  <% end_if %>
<% end_if %>
