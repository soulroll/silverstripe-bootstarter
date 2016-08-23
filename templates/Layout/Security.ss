<div class="header-content-wrapper">
    <div class="inner">
        <div class="lead-content-wrapper">
            <h1>Login</h1>
        </div>
    </div>
</div>
<div id="main" class="{$MyColour} main-content-fullwidth no-breadcrumbs" role="main">
    <section class="container">
        <div class="inner">
            <div class="security_box">
                <p>
                    <a class="security_back home" href="$BaseURLForLocale">Home</a>
                </p>
                <div class="security_content">
                    <% if Action = login %>
                        <% if CurrentMember %>
                            <% else %>
                                <div class="content">Please login using email "admin" and password: "password"</div>
                            <% end_if %>
                        <% else %>
                            <% if $Content %>$Content<% end_if %>
                    <% end_if %>
                    <% if $Form %>$Form<% end_if %>
                    <% if Action = login %>
                    <div>
                        <p>You can also try the CMS interface in a different language with the following logins:</p>
                        <ul>
                            <li>Arabic (Username: "arabic", password: "password")</li>
                            <li>Chinese (Username: "chinese", password: "password")</li>
                            <li>French (Username: "french", password: "password")</li>
                            <li>German (Username: "german", password: "password")</li>
                            <li>Japanese (Username: "japanese", password: "password")</li>
                            <li>Russian (Username: "russian", password: "password")</li>
                            <li>Spanish (Username: "spanish", password: "password")</li>
                            <li>Te Reo/Māori (Username: "tereo", password: "password")</li>
                            <li>Arabic (Username: "arabic", password: "password")</li>
                            <li>Russian (Username: "russian", password: "password")</li>
                            <li>Japanese (Username: "japanese", password: "password")</li>
                        </ul>
                        <p>More languages are available in the <a href="admin/myprofile">profile settings</a>.</p>
                    </div>
                    <% end_if %>
                </div>
            </div>
        </div>
    </section>
</div>
