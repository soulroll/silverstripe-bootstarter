<div class="header-content-wrapper">
    <div class="inner">
        <div class="lead-content-wrapper">
            <h1>$Title</h1>
            <div class="search-wrapper search-page">
                <form id="search-form-result" class="search-form" action="search/SearchForm" method="get" enctype="application/x-www-form-urlencoded">
                    <div class="input-wrapper">
                        <input class="search-input" placeholder="Search" type="text" value="" name="Search" id="search">
                    </div>
                    <input type="hidden" name="searchlocale" value="en_NZ" class="hidden" id="SearchForm_SearchForm_searchlocale" />
                    <button class="search-submit btn-primary btn-lg" type="submit">
                        <span class="text">Search</span>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="main-content-wrapper search">
    <div class="inner">
    <% include Sidebar %>
    <section id="main" class="main-content" role="main">
        <div class="container">
            <% if $Keyword %>
                <h2 class="search-result-heading">Your search for <span>'$Keyword'</span> returned <span>$TotalResults</span> results.</h2>
            <% end_if %>
            <% if $Results %>
                <% loop $Results %>
                    <% if $ClassName == 'File' %>
                        <article class="article-block result-file">
                            <header>
                                <h3 class="title">
                                    <a class="filetype-download file-link"href="$Link">$Title</a>
                                </h3>
                            </header>
                            <div class="content">
                                <ul class="list-metadata">
                                    <li class="filetype-{$FileIcon} file">$getExtension</li>
                                    <li>$getSize</li>
                                    <li>Created: $Created.Format('d/m/y')</li>
                                </ul>
                                <% if $Description %>
                                    <p>$Description</p>
                                <% end_if %>
                            </div>
                        </article>
                    <% else %>
                        <article class="article-block result-page">
                            <header>
                                <h3 class="title"><a href="$Link">$Title</a></h3>
                            </header>
                            <div class="content">
                                <ul class="breadcrumb-list">$Breadcrumbs</ul>
                                <p>$ExcerptOrIntro($Excerpt).NoHTML().LimitCharacters(150, '...')</p>
                            </div>
                            <!-- Call function to output the excerpt or the intro or content of the page
                                Note the intro of page is output if the excerpt is the page title as having the
                                page title twice just looks weird. HTML needs to be stripped which means the search
                                term cannot be bolded etc -->
                        </article>
                    <% end_if %>
                <% end_loop %>
            <% else %>
                <p class="lead-in-page">Sorry, your search query did not return any results.</p>
            <% end_if %>

            <% with $Results %>
                <% include Pagination %>
            <% end_with %>
        </div>
    </section>
    </div>
</div>
