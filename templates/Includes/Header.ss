<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home">Bootstrap</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <% loop $Menu(1) %>
                    <li class="<% if LinkOrCurrent = current %>active<% end_if %> <% if Children %>dropdown<% end_if %>">
                        <a href="$Link" title="$Title.XML" <% if Children %>class="dropdown-toggle" data-toggle="dropdown"<% end_if %>>
                            $MenuTitle.XML <% if Children %><span class="caret"></span><% end_if %>
                        </a>
                        <% if Children %>
                            <ul class="dropdown-menu">
                                <% loop Children %>
                                    <li><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </li>
                <% end_loop %>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <% if CurrentMember %>
                    <li><a href="Security/logout">Logout</a></li>
                <% else %>
                    <li><a href="admin">Login</a></li>
                <% end_if %>
            </ul>
        </div>
    </div>
</nav>
