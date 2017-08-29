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
    <a class="nav-link" id="materialdesign-tab" data-toggle="tab" href="#materialdesign" role="tab" aria-controls="buttons">Material Design</a>
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

<div class="tab-content" id="typographyTabContent">
  <div class="tab-pane fade show active" id="headings" role="tabpanel" aria-labelledby="headings-tab">
    <% include Headings %>
  </div>
  <div class="tab-pane fade" id="paragraph" role="tabpanel" aria-labelledby="paragraph-tab">
    <% include Paragraph %>
  </div>
  <div class="tab-pane fade" id="lists" role="tabpanel" aria-labelledby="lists-tab">
    <% include Lists %>
  </div>
  <div class="tab-pane fade" id="tables" role="tabpanel" aria-labelledby="tables-tab">
    <% include Tables %>
  </div>
  <div class="tab-pane fade" id="buttons" role="tabpanel" aria-labelledby="buttons-tab">
    <% include Buttons %>
  </div>
  <div class="tab-pane fade" id="fontawesome" role="tabpanel" aria-labelledby="buttons-tab">
    <% include FontAwesome %>
  </div>
  <div class="tab-pane fade" id="materialdesign" role="tabpanel" aria-labelledby="buttons-tab">
    <% include MaterialDesign %>
  </div>
  <div class="tab-pane fade" id="grid" role="tabpanel" aria-labelledby="grid-tab">
    <% include Grid %>
  </div>
  <div class="tab-pane fade" id="alerts" role="tabpanel" aria-labelledby="alerts-tab">
    <% include Alerts %>
  </div>
  <div class="tab-pane fade" id="badges" role="tabpanel" aria-labelledby="badges-tab">
    <% include Badges %>
  </div>
</div>

<br/></br>


<ul class="nav nav-tabs" id="componentsTab" role="tablist">

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
    <% include Collapse %>
  </div>

  <div class="tab-pane fade" id="forms" role="tabpanel" aria-labelledby="forms-tab">
    <% include Forms %>
  </div>

  <div class="tab-pane fade" id="modal" role="tabpanel" aria-labelledby="modal-tab">
    <% include Modal %>
  </div>

  <div class="tab-pane fade" id="dropdowns" role="tabpanel" aria-labelledby="dropdowns-tab">
    <% include Dropdowns %>
  </div>

  <div class="tab-pane fade" id="cards" role="tabpanel" aria-labelledby="cards-tab">
    <% include Cards %>
  </div>

</div>
