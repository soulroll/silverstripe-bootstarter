<h3 class="mt-4 mb-4">Forms</h3>
<form action="#" method="post" enctype="application/x-www-form-urlencoded">
  <p class="message ">Your form success message looks like this.</p>
  <fieldset>
    <div class="field text">
      <label class="left" for="name">First name</label>
      <div class="middleColumn">
        <input id="name" type="text" name="name" class="text" required="required" aria-required="true" />
      </div>
    </div>
    <div class="field text">
      <label class="left" for="last-name">Last name</label>
      <div class="middleColumn">
        <input id="last-name" type="text" name="last-name" class="text" required="required" aria-required="true" />
      </div>
    </div>
    <div class="field textarea">
      <label class="left" for="message">Message</label>
      <div class="middleColumn">
        <textarea id="message" name="message" class="textarea" rows="5" cols="20" required="required" aria-required="true"></textarea>
      </div>
    </div>
    <div class="field optionset checkboxset">
      <label class="left">Check out these check boxes</label>
      <div class="middleColumn">
        <ul id="Form_HelloForm_topics" class="optionset checkboxset" >
          <li class="odd val1">
            <input class="checkbox" name="topics[1]" type="checkbox" value="1" checked="checked" />
            <label for="Form_HelloForm_topics_1">Check one</label>
          </li>
          <li class="even val2">
            <input class="checkbox" name="topics[2]" type="checkbox" value="2" />
            <label for="Form_HelloForm_topics_2">Check two</label>
          </li>
          <li class="odd val3">
            <input class="checkbox" name="topics[3]" type="checkbox" value="3" />
            <label for="Form_HelloForm_topics_3">Check three</label>
          </li>
        </ul>
      </div>
    </div>
    <div id="Browser" class="field optionset">
      <label class="left">Radio in these radio buttons</label>
      <div class="middleColumn">
        <ul class="optionset" id="Form_HelloForm_Browser">
          <li class="odd valFirefox">
            <input id="Form_HelloForm_Browser_Firefox" class="radio" name="Browser" type="radio" value="Firefox" />
            <label for="Form_HelloForm_Browser_Firefox">Radio one</label>
          </li>
          <li class="even valChrome">
            <input id="Form_HelloForm_Browser_Chrome" class="radio" name="Browser" type="radio" value="Chrome" />
            <label for="Form_HelloForm_Browser_Chrome">Radio two</label>
          </li>
          <li class="odd valInternet_Explorer">
            <input id="Form_HelloForm_Browser_InternetExplorer" class="radio" name="Browser" type="radio" value="Internet Explorer" />
            <label for="Form_HelloForm_Browser_InternetExplorer">Radio three</label>
          </li>
        </ul>
      </div>
    </div>
  </fieldset>
</form>
