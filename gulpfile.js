// Include gulp & plugins
const gulp = require('gulp');
const autoprefixer = require('gulp-autoprefixer');
const minifyCSS = require('gulp-clean-css');
const minifyJS = require('gulp-uglify');
const concatJS = require('gulp-concat');
const nodesass = require('gulp-sass');
const exec = require('child_process').exec;

// Paths setup
const PATHS = {
  'src': {
    'css': './src/scss/**/*.scss',
    'js': './src/js/**/*.js',
    'img': './src/img/**/*',
    'fonts': './src/fonts/**/*',
    'favicons': './src/favicons/**/*'
  },
  'dist': {
    'css': './dist/css/',
    'js': './dist/js/',
    'img': './dist/img/',
    'fonts': './dist/fonts/',
    'favicons': './dist/'
  }
}

// Turn sass into css, autoprefix and minify
gulp.task('scss', () => {
  return gulp.src(PATHS.src.css)
    .pipe(nodesass({
      includePaths: [] // any node_modules css file paths can be included here so they are available for @import statements in .scss files
    })
    .on('error', nodesass.logError))
    .pipe(autoprefixer({
      browsers: ['last 2 versions'],
      cascade: false,
      remove: false
    }))
    .pipe(minifyCSS())
    .pipe(gulp.dest(PATHS.dist.css));
});

// Concatenate all project JS files and minify them
gulp.task('js', () => {
    return gulp.src([
      'node_modules/jquery/dist/jquery.min.js',
      'node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js',
      'node_modules/jquery-match-height/dist/jquery.matchHeight-min.js',
      PATHS.src.js
    ])
    .pipe(concatJS('main.js')) // where `main.js` is the name of the output file
    .pipe(gulp.dest(PATHS.dist.js))
    .pipe(minifyJS({
      mangle: false
    }))
    .pipe(gulp.dest(PATHS.dist.js));
});

// Copy image files
gulp.task('copy-img', () => {
  return gulp.src(PATHS.src.img)
    .pipe(gulp.dest(PATHS.dist.img));
});

// Copy font files
gulp.task('copy-fonts', () => {
  return gulp.src(PATHS.src.fonts)
    .pipe(gulp.dest(PATHS.dist.fonts));
});

// Copy favicon files
gulp.task('copy-favicons', () => {
  return gulp.src(PATHS.src.favicons)
    .pipe(gulp.dest(PATHS.dist.favicons));
});

// Watch files for changes
gulp.task('watch', () => {
  gulp.watch('src/**/*', ['scss', 'js', 'copy-fonts', 'copy-img', 'copy-favicons']);
});

// Build
gulp.task('build', ['scss', 'js', 'copy-fonts', 'copy-img', 'copy-favicons']);

// Default task (build before watching)
gulp.task('default', ['build', 'watch']);
