const gulp = require('gulp');
const sass = require('gulp-sass');
const postcss = require('gulp-postcss');
const sourcemaps = require('gulp-sourcemaps');
const autoprefixer = require('autoprefixer');
const flexfixes = require('postcss-flexbugs-fixes');
const cssnano = require('cssnano');
const concatjs = require('gulp-concat');
const uglifyjs = require('gulp-uglify');

const PATHS = {
  'src': {
    'css': './src/scss/**/*.scss',
    'js': './src/js/**/*.js',
    'img': './src/img/**/*',
    'fonts': './src/fonts/**/*',
    'fontawesome': './node_modules/font-awesome/fonts/**/*',
    'favicons': './src/favicons/**/*'
  },
  'dist': {
    'css': './dist/css/',
    'js': './dist/js/',
    'img': './dist/img/',
    'fonts': './dist/fonts/',
    'fontawesome': './dist/fonts/',
    'favicons': './dist/'
  }
}

gulp.task('scss-source-maps', () => {
  return gulp.src(PATHS.src.css)
    .pipe(sass({
        includePaths: [
        ]
      })
      .on('error', sass.logError)
    )
    .pipe(sourcemaps.init())
    .pipe(postcss([
      autoprefixer({
        browsers: ['last 2 versions'],
        cascade: false,
        remove: false
      }),
      flexfixes(),
      cssnano()
    ]))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(PATHS.dist.css));
});

gulp.task('js-source-maps', function() {
  return gulp.src([
      './node_modules/jquery/dist/jquery.min.js',
      './node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js',
      './node_modules/jquery-match-height/dist/jquery.matchHeight-min.js',
      PATHS.src.js
    ])
    .pipe(sourcemaps.init())
    .pipe(concatjs('main.min.js'))
    .pipe(uglifyjs({ mangle: false }))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(PATHS.dist.js));
});


gulp.task('scss', () => {
  return gulp.src(PATHS.src.css)
    .pipe(sass({
        includePaths: [
        ]
      })
      .on('error', sass.logError)
    )
    .pipe(postcss([
      autoprefixer({
        browsers: ['last 2 versions'],
        cascade: false,
        remove: false
      }),
      flexfixes(),
      cssnano()
    ]))
    .pipe(gulp.dest(PATHS.dist.css));
});

gulp.task('js', function() {
  return gulp.src([
      './node_modules/jquery/dist/jquery.min.js',
      './node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js',
      './node_modules/jquery-match-height/dist/jquery.matchHeight-min.js',
      PATHS.src.js
    ])
    .pipe(concatjs('main.min.js'))
    .pipe(uglifyjs({ mangle: false }))
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

// Copy fontawesome font files
gulp.task('copy-fontawesome', () => {
  return gulp.src(PATHS.src.fontawesome)
    .pipe(gulp.dest(PATHS.dist.fonts));
});

// Copy favicon files
gulp.task('copy-favicons', () => {
  return gulp.src(PATHS.src.favicons)
    .pipe(gulp.dest(PATHS.dist.favicons));
});

// Watch files for changes
gulp.task('watch', () => {
  gulp.watch('src/**/*', ['scss', 'js', 'copy-fonts', 'copy-fontawesome', 'copy-img', 'copy-favicons']);
});

// Build development
gulp.task('build-development', ['scss-source-maps', 'js-source-maps', 'copy-fonts', 'copy-fontawesome', 'copy-img', 'copy-favicons']);


// Build production
gulp.task('build-production', ['scss', 'js', 'copy-fonts', 'copy-fontawesome', 'copy-img', 'copy-favicons']);


// Default task (build before watching)
gulp.task('default', ['build-development', 'watch']);
