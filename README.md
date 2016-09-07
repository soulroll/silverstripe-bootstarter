# SilverStripe Bootstrap boilerplate theme
Front-end boilerplate theme for SilverStripe projects

## Why another boilerplate?
I wasn't happy with the current selection out there, they all lacked in different areas and also required lengthy installation steps.

## Features
- Npm for frontend package managemnet
- Gulp for SASS and JS Compiling
- JShint for testing javascript
- Menu loops are properly integrated with Bootstraps navbar and dropdowns
- SilverStripe form checkbox fix
- Kitchen sink of common elements
- Responsive tables that output from the CMS
- Proper folder structure

## Requirements
1. NodeJS (sudo apt-get install nodejs)
2. NPM (sudo apt-get install npm)
2. Gulp (npm install gulp -g)

## Installation
1. Clone or download the respository into your SilverStripe themes directory
2. Run 'npm install' inside of the theme folder to get all of the node dependancies, this will also install Gulp for compiling scss and js
3. Change to the theme in SilverStripe
4. Run "gulp" via the cmd line in the themes folder which will compile sass and js into css and js/dist/ and will also watch for changes in the scss and js/src/ directory (building on top of the theme)

## Extra
You can run "gulp jshint" to check for javascript errors in js/src/ from your .jshintrc file
