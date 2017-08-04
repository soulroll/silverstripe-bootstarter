<% if $Content %>
  <div class="page-footer">
    <span class="page-footer-last-modified">Last modified: {$LastEdited.Format(jS F Y)}</span>
    <a href="#" title="Print this page" class="page-footer-print fa fa-print" onclick="window.print(); return false;">
      <span class="sr-only"><%t TableListField.Print "Print" %></span>
    </a>
  </div>
<% end_if %>
