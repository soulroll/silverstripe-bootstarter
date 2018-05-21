<div id="myCarousel" class="carousel carousel-fade slide bg-inverse d-print-none mt-3" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid ml-auto mr-auto" src="http://placehold.it/1140x350" alt="First slide">
      <div class="carousel-caption">
        <h3>First slide</h3>
        <p>This is the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid ml-auto mr-auto" src="http://placehold.it/1140x350" alt="Second slide">
      <div class="carousel-caption">
        <h3>Second slide</h3>
        <p>This is the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid ml-auto mr-auto" src="http://placehold.it/1140x350" alt="Third slide">
      <div class="carousel-caption">
        <h3>Third slide</h3>
        <p>This is the third slide.</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<h2 class="mt-5 mb-4">Typography</h2>
<ul class="nav nav-tabs" id="typographyTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="headings-tab" data-toggle="tab" href="#headings" role="tab" aria-controls="headings" aria-expanded="true">Headings</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="paragraph-tab" data-toggle="tab" href="#paragraph" role="tab" aria-controls="paragraph">Paragraph</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="lists-tab" data-toggle="tab" href="#lists" role="tab" aria-controls="lists">Lists</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="tables-tab" data-toggle="tab" href="#tables" role="tab" aria-controls="tables">Tables</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="tables-tab" data-toggle="tab" href="#buttons" role="tab" aria-controls="buttons">Buttons</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="fontawesome-tab" data-toggle="tab" href="#fontawesome" role="tab" aria-controls="buttons">Font Awesome</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="grid-tab" data-toggle="tab" href="#grid" role="tab" aria-controls="grid">Grid</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="alerts-tab" data-toggle="tab" href="#alerts" role="tab" aria-controls="alerts">Alerts</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="badges-tab" data-toggle="tab" href="#badges" role="tab" aria-controls="badges">Badges</a>
  </li>
</ul>
<div class="tab-content mb-4" id="typographyTabContent">
  <div class="tab-pane fade show active" id="headings" role="tabpanel" aria-labelledby="headings-tab">
    <% include Includes/Bootstrap/Headings %>
  </div>
  <div class="tab-pane fade" id="paragraph" role="tabpanel" aria-labelledby="paragraph-tab">
    <% include Includes/Bootstrap/Paragraph %>
  </div>
  <div class="tab-pane fade" id="lists" role="tabpanel" aria-labelledby="lists-tab">
    <% include Includes/Bootstrap/Lists %>
  </div>
  <div class="tab-pane fade" id="tables" role="tabpanel" aria-labelledby="tables-tab">
    <% include Includes/Bootstrap/Tables %>
  </div>
  <div class="tab-pane fade" id="buttons" role="tabpanel" aria-labelledby="buttons-tab">
    <% include Includes/Bootstrap/Buttons %>
  </div>
  <div class="tab-pane fade" id="fontawesome" role="tabpanel" aria-labelledby="buttons-tab">
    <% include Includes/Bootstrap/FontAwesome %>
  </div>
  <div class="tab-pane fade" id="grid" role="tabpanel" aria-labelledby="grid-tab">
    <% include Includes/Bootstrap/Grid %>
  </div>
  <div class="tab-pane fade" id="alerts" role="tabpanel" aria-labelledby="alerts-tab">
    <% include Includes/Bootstrap/Alerts %>
  </div>
  <div class="tab-pane fade" id="badges" role="tabpanel" aria-labelledby="badges-tab">
    <% include Includes/Bootstrap/Badges %>
  </div>
</div>
<ul class="nav nav-tabs mt-5" id="componentsTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="collapse-tab" data-toggle="tab" href="#collapse" role="tab" aria-controls="collapse" aria-expanded="true">Collapse</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="forms-tab" data-toggle="tab" href="#forms" role="tab" aria-controls="forms">Forms</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="modal-tab" data-toggle="tab" href="#modal" role="tab" aria-controls="modal">Modal</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="dropdowns-tab" data-toggle="tab" href="#dropdowns" role="tab" aria-controls="dropdowns">Dropdowns</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="cards-tab" data-toggle="tab" href="#cards" role="tab" aria-controls="dropdowns">Cards</a>
  </li>
</ul>
<div class="tab-content" id="componentsTabContent">
  <div class="tab-pane fade show active" id="collapse" role="tabpanel" aria-labelledby="collapse-tab">
    <% include Includes/Bootstrap/Collapse %>
  </div>
  <div class="tab-pane fade" id="forms" role="tabpanel" aria-labelledby="forms-tab">
    <% include Includes/Bootstrap/Forms %>
  </div>
  <div class="tab-pane fade" id="modal" role="tabpanel" aria-labelledby="modal-tab">
    <% include Includes/Bootstrap/Modal %>
  </div>
  <div class="tab-pane fade" id="dropdowns" role="tabpanel" aria-labelledby="dropdowns-tab">
    <% include Includes/Bootstrap/Dropdowns %>
  </div>
  <div class="tab-pane fade" id="cards" role="tabpanel" aria-labelledby="cards-tab">
    <% include Includes/Bootstrap/Cards %>
  </div>
</div>
