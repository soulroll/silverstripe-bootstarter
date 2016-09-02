# SilverStripe Bootstrap boilerplate theme
Front-end boilerplate theme for SilverStripe projects

## Why another boilerplate?
I wasn't happy with the current selection out there. They lacked basic kicthen sink examples or menus / breadcrumbs tied into SilverStripes menu loops and also required lengthy installation steps. This one also has a proper sass folder structure with the Gulp ready to go.

## Requirements
1. NodeJS (sudo apt-get install nodejs)
2. NPM (sudo apt-get install npm)
2. Gulp (npm install gulp -g)

## Installation
1. Clone or download the respository into your SilverStripe themes directory
2. Run 'npm install' inside of the theme folder to get all of the node dependancies, this will also install Gulp for compiling scss and js-source
3. Change to the theme in SilverStripe
4. Running "gulp" via the cmd line in the themes folder will compile sass and js into css and js/dist/ and will also watch for changes in the scss and js folder (building on top of the theme)

## Extra
You can run "gulp jslint" to check for javascript errors in js/src/ from your .jshintrc file
