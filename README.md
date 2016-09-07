# SilverStripe Bootstrap Boilerplate Theme
A front-end boilerplate theme for starting Bootstrap SilverStripe projects faster

## Why another boilerplate?
I wasn't happy with the current selection of Bootstrap themes out there, they all lacked in different areas and some required lengthy installation steps to get up and running.

## Features
- Bootstrap v3.3.7
- Npm for front-end package managemnet
- Gulp for SASS and JS Compiling
- JShint for testing javascript
- Menu loops properly integrated with Bootstraps navbar and dropdowns
- SilverStripe form checkbox fix
- Kitchen sink on page.ss of common elements
- Responsive tables that output from the CMS (JS wraps all table elements with the correct the table-responsive class)
- Proper SASS folder structure to keep things tidy

## Requirements
1. NodeJS (sudo apt-get install nodejs)
2. NPM (sudo apt-get install npm)
2. Gulp (npm install gulp -g)

## Installation
1. Clone or download the respository into your SilverStripe themes directory
2. Run 'npm install' inside of the theme folder to get all of the node dependancies, this will also install Gulp for compiling scss and js
3. Change to the theme in SilverStripe
4. Run "gulp" via the cmd line in the themes directory, this will compile the sass and js into css and js/dist/ and will watch for changes in the scss and js/src/ directories (building on top of the theme)

## Extra
You can run "gulp jshint" to check for javascript errors in js/src/ from your .jshintrc file
