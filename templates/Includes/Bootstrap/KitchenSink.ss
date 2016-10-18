<% if URLSegment = 'home' %>
  <h2>Typography</h2>
  <br/>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#headings">Headings</a></li>
    <li><a data-toggle="tab" href="#paragraph">Paragraph</a></li>
    <li><a data-toggle="tab" href="#lists">Lists</a></li>
    <li><a data-toggle="tab" href="#tables">Tables</a></li>
    <li><a data-toggle="tab" href="#buttons">Buttons</a></li>
    <li><a data-toggle="tab" href="#glyphicons">Glyphicons</a></li>
    <li><a data-toggle="tab" href="#grid">Grid</a></li>
  </ul>
  <div class="tab-content">
    <div id="headings" class="tab-pane fade in active">
      <% include Headings %>
    </div>
    <div id="paragraph" class="tab-pane fade">
      <% include Paragraph %>
    </div>
    <div id="lists" class="tab-pane fade">
      <% include Lists %>
    </div>
    <div id="tables" class="tab-pane fade">
      <% include Tables %>
    </div>
    <div id="buttons" class="tab-pane fade">
      <% include Buttons %>
    </div>
    <div id="glyphicons" class="tab-pane fade">
      <% include Glyphicons %>
    </div>
    <div id="grid" class="tab-pane fade">
      <% include Grid %>
    </div>
  </div>
  <br/>
  <h2>Components</h2>
  <br/>
  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="#collapsible">Collapsible</a></li>
    <li><a data-toggle="tab" href="#carousel">Carousel</a></li>
    <li><a data-toggle="tab" href="#modal">Modal</a></li>
    <li><a data-toggle="tab" href="#tabs">Tabs</a></li>
    <li><a data-toggle="tab" href="#dropdowns">Dropdowns</a></li>
    <li class="active"><a data-toggle="tab" href="#forms">Forms</a></li>
  </ul>
  <div class="tab-content">
    <div id="collapsible" class="tab-pane fade">
      <% include Collapsible %>
    </div>
    <div id="carousel" class="tab-pane fade">
      <% include Carousel %>
    </div>
    <div id="modal" class="tab-pane fade">
      <% include Modal %>
    </div>
    <div id="tabs" class="tab-pane fade">
      <% include Tabs %>
    </div>
    <div id="dropdowns" class="tab-pane fade">
      <% include Dropdowns %>
    </div>
    <div id="forms" class="tab-pane fade in active">
      <% include Forms %>
    </div>
  </div>
<% end_if %>
