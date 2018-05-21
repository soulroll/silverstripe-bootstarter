# SilverStripe Bootstarter Theme
A front-end boilerplate theme for starting Bootstrap SilverStripe projects faster.

## Why another boilerplate?
I wasn't happy with the current selection of Bootstrap themes out there, they all lacked in different areas and some required lengthy installation steps to get up and running.

## Features
- BrowserSync
- jQuery v3.3.1
- Bootstrap 4.1.1
- NPM for front-end package management
- Gulp for SCSS and JS Compiling
- JShint for testing javascript
- Menu loops integrated with a custom navbar with dropdowns
- Merged Bootstrap form styles with SilverStripes form markup
- Responsive tables that output from the CMS (JS wraps all table elements with the table-responsive class)
- Basic SCSS folder structure to keep things tidy
- matchHeight.js for fixing the grid float bug with unequal columns (Check the footer)
- Kitchen sink included on page.ss featuring common bootstrap 4 elements (Just delete what you dont want)
- Supports SilverStripe 4.1.0
- Supports userforms
- Supports elemental blocks
- External link and file chevrons on content links

## Requirements
1. NodeJS (sudo apt-get install nodejs)
2. NPM (sudo apt-get install npm)
3. NPM legacy (sudo apt-get install nodejs-legacy)
4. Gulp (sudo npm install gulp -g)

## Branches
- Master (Bootstrap 4.1.1 - SilverStripe 4.1.0)

## Installation
1. Clone or download the respository into your SilverStripe themes directory.
2. Run 'npm install' via cmd line inside the bootstarter theme folder to get all of the node dependancies, this will also install Gulp for compiling scss and js.
3. Run 'composer vendor-expose' in the project root to set up symlinks from the theme folder to the public folder.
4. Make the following changes to theme.yml under themes: rewrite_hash_links: false (rewriting hash links interferes with Bootstraps javascript).
5. Change the theme from simple to silverstripe-bootstarter in theme.yml see below for details.

```
---
Name: mytheme
---

SilverStripe\View\SSViewer:
  themes:
    - 'silverstripe-bootstarter'
    - '$default'
  rewrite_hash_links: false
```

6. Change the var PROXY_URL = 'to your local SilverStripe development url';
7. Run "gulp" via the cmd line inside bootstarter theme folder, this will compile the scss and js into css and js/dist/ and will watch for changes in the scss and js/src/ directories (building on top of the theme).
8. Run "gulp build" for production, this will minify scss and js into the dist folder.

## Instructions
- Run "gulp watch" to watch for scss and javascript changes working with browsersync.
- Run "gulp jshint" to check for javascript errors in js/src/ from your .jshintrc file.
- Run "gulp build" to compress all files for production.
