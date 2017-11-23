<div class="container-full page-banner-background">
  <div class="container page-banner">
    <h1>$Title</h1>
  </div>
</div>
<div class="container-full page-background">
  <div class="container">
    <div class="page">
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
          $Content
          <h2>$DateHeader</h2>
          <% if Events %>
          <div id="event-calendar-events">
            <% include EventList %>
          </div>
          <% else %>
            <p><% _t('NOEVENTS','There are no events') %>.</p>
          <% end_if %>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
          <div class="calebdar-widget-table-holder">
            $CalendarWidget
          </div>
          $MonthJumper
          <br/>
          <br/>
          <p class="feed">
            <a href="$Link(rss)">
              <% _t('SUBSCRIBE','Calendar RSS Feed') %>
            </a>
          </p>
          <div class="event-calendar-controls">
            <% include QuickNav %>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
