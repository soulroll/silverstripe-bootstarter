# SilverStripe Bootstarter Theme
A front-end boilerplate theme for starting Bootstrap SilverStripe projects faster.

## Why another boilerplate?
I wasn't happy with the current selection of Bootstrap themes out there, they all lacked in different areas and some required lengthy installation steps to get up and running.

## Features
- jQuery v2.2.4
- Bootstrap v3.3.7
- NPM for front-end package managemnet
- Gulp for SASS and JS Compiling
- JShint for testing javascript
- Menu loops integrated with Bootstraps navbar and dropdowns
- Merged Bootstrap form styles with SilverStripes form markup
- Responsive tables that output from the CMS (JS wraps all table elements with the table-responsive class)
- Basic SASS folder structure to keep things tidy
- matchHeight for fixing the grid float bug with unequal columns (Check the footer)
- Kitchen sink included on page.ss featuring common bootstrap elements (Just delete what you dont want)
- Supports userforms

## Requirements
1. NodeJS (sudo apt-get install nodejs)
2. NPM (sudo apt-get install npm)
2. Gulp (sudo npm install gulp -g)

## Installation
1. Clone or download the respository into your SilverStripe themes directory.
2. Run 'npm install' via cmd line inside the bootstarter theme folder to get all of the node dependancies, this will also install Gulp for compiling scss and js.
3. Change to the Bootstarter theme in the SilverStripe CMS.
4. Run "gulp" via the cmd line inside bootstarter theme folder, this will compile the sass and js into css and js/dist/ and will watch for changes in the scss and js/src/ directories (building on top of the theme).

## Extra
You can run "gulp jshint" to check for javascript errors in js/src/ from your .jshintrc file.
