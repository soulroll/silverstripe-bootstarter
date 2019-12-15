<% if $Content || $ElementalArea %>
  <div class="page-footer">
    <span class="page-footer-last-modified">Last modified: $LastEdited</span>
    <div class="page-footer-actions">
      <a href="mailto:?subject={$SiteConfig.Title} - {$Title} page" class="page-footer-action page-footer-action-email d-print-none">Email page</a>
      <a href="#" onclick="window.print(); return false;" class="page-footer-action page-footer-action-print d-print-none">Print page</a>
    </div>
  </div>
<% end_if %>
