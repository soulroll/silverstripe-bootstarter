<% if URLSegment = 'home' %>

  <!-- SilverStripe Bootstrap Anchor Bugs -->
  <!-- https://docs.silverstripe.org/en/3.2/developer_guides/templates/how_tos/disable_anchor_links/ -->
  <!-- SSViewer::setOption('rewriteHashlinks', false); -->

  <h2 class="mt-5 mb-4">Typography</h2>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs flex-wrap" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#headings" role="tab">Headings</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#paragraph" role="tab">Paragraph</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#lists" role="tab">Lists</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#tables" role="tab">Tables</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#buttons" role="tab">Buttons</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#fontawesome" role="tab">Font Awesome</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#grid" role="tab">Grid</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#alerts" role="tab">Alerts</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div class="tab-pane active" id="headings" role="tabpanel">
      <% include Headings %>
    </div>
    <div class="tab-pane" id="paragraph" role="tabpanel">
      <% include Paragraph %>
    </div>
    <div class="tab-pane" id="lists" role="tabpanel">
      <% include Lists %>
    </div>
    <div class="tab-pane" id="tables" role="tabpanel">
      <% include Tables %>
    </div>
    <div class="tab-pane" id="buttons" role="tabpanel">
      <% include Buttons %>
    </div>
    <div class="tab-pane" id="fontawesome" role="tabpanel">
      <% include FontAwesome %>
    </div>
    <div class="tab-pane" id="grid" role="tabpanel">
      <% include Grid %>
    </div>
    <div class="tab-pane" id="alerts" role="tabpanel">
      <% include Alerts %>
    </div>
  </div>

  <h2 class="mt-5 mb-4">Components</h2>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs flex-wrap" role="tablist">
    <li class="nav-item active">
      <a class="nav-link" data-toggle="tab" href="#collapse" role="tab">Collapse</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#carousel" role="tab">Carousel</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#modal" role="tab">Modal</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#tabs" role="tab">Tabs</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#tooltips" role="tab">Tooltips</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#popovers" role="tab">Popovers</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#dropdowns" role="tab">Dropdowns</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#forms" role="tab">Forms</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#pagination" role="tab">Pagination</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div class="tab-pane active" id="collapse" role="tabpanel">
      <% include Collapse %>
    </div>
    <div class="tab-pane" id="carousel" role="tabpanel">
      <% include Carousel %>
    </div>
    <div class="tab-pane" id="modal" role="tabpanel">
      <% include Modal %>
    </div>
    <div class="tab-pane" id="tabs" role="tabpanel">
      <% include Tabs %>
    </div>
    <div class="tab-pane" id="tooltips" role="tabpanel">
      <% include Tooltips %>
    </div>
    <div class="tab-pane" id="popovers" role="tabpanel">
      <% include Popovers %>
    </div>
    <div class="tab-pane" id="dropdowns" role="tabpanel">
      <% include Dropdowns %>
    </div>
    <div class="tab-pane" id="forms" role="tabpanel">
      <% include Forms %>
    </div>
    <div class="tab-pane" id="pagination" role="tabpanel">
      <% include BootstarterPagination %>
    </div>
  </div>

<% end_if %>
