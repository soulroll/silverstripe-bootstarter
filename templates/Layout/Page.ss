<div class="container">
  <div class="row">
    <div class="col-lg-12">
    <% include Breadcrumbs %>
      <div class="jumbotron">
        <h1>$Title</h1>
        $Content
        $Form
      </div>
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#headings">Headings</a></li>
        <li><a data-toggle="tab" href="#collapsible">Collapsible</a></li>
        <li><a data-toggle="tab" href="#carousel">Carousel</a></li>
        <li><a data-toggle="tab" href="#tables">Tables</a></li>
      </ul>
      <div class="tab-content">
        <div id="headings" class="tab-pane fade in active">
          <% include Headings %>
        </div>
        <div id="collapsible" class="tab-pane fade">
          <% include Collapsible %>
        </div>
        <div id="carousel" class="tab-pane fade">
          <% include Carousel %>
        </div>
         <div id="tables" class="tab-pane fade">
          <% include Tables %>
        </div>
      </div>
    </div>
  </div>
</div>

