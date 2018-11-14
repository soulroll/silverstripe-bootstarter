var gulp = require('gulp');
var sass = require('gulp-sass');
var postcss = require('gulp-postcss');
var sourcemaps = require('gulp-sourcemaps');
var autoprefixer = require('autoprefixer');
var flexfixes = require('postcss-flexbugs-fixes');
var cssnano = require('cssnano');
var concatjs = require('gulp-concat');
var uglifyjs = require('gulp-uglify');
var browsersync = require('browser-sync').create();

// Silverstripe Project URL (Needed for BrowserSync)
var PROXY_URL = 'eklektos.davidm.wgtn.cat-it.co.nz';

// Source and Distributed Paths
var PATHS = {
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

function scss() {
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
      flexfixes()
    ]))
    .pipe(gulp.dest(PATHS.dist.css))
    .pipe(browsersync.reload({stream:true}))
}

function js() {
  return gulp.src([
      './node_modules/jquery/dist/jquery.min.js',
      './node_modules/popper.js/dist/umd/popper.min.js',
      './node_modules/bootstrap/dist/js/bootstrap.min.js',
      './node_modules/jquery-match-height/dist/jquery.matchHeight-min.js',
      './node_modules/magnific-popup/dist/jquery.magnific-popup.min.js',
      './node_modules/slick-carousel/slick/slick.min.js',
      PATHS.src.js
    ])
    .pipe(concatjs('main.min.js'))
    .pipe(gulp.dest(PATHS.dist.js))
    .pipe(browsersync.reload({stream:true}))
}

function watch() {
  browsersync.init({
    proxy: PROXY_URL,
    files: [
        '././mysite/**/*.php',
        '././mysite/**/*.js',
        'templates/**/*.ss'
    ],
    notify: true
  });
  gulp.watch('src/**/*', gulp.parallel(scss, js))
}

function scssBuild() {
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
    .pipe(gulp.dest(PATHS.dist.css))
}

function jsBuild() {
  return gulp.src([
      './node_modules/jquery/dist/jquery.min.js',
      './node_modules/popper.js/dist/umd/popper.min.js',
      './node_modules/bootstrap/dist/js/bootstrap.min.js',
      './node_modules/jquery-match-height/dist/jquery.matchHeight-min.js',
      './node_modules/magnific-popup/dist/jquery.magnific-popup.min.js',
      './node_modules/slick-carousel/slick/slick.min.js',
      PATHS.src.js
    ])
    .pipe(sourcemaps.init())
    .pipe(concatjs('main.min.js'))
    .pipe(uglifyjs({ mangle: false }))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest(PATHS.dist.js));
}

function copyImg() {
  return gulp.src(PATHS.src.img)
    .pipe(gulp.dest(PATHS.dist.img));
}

function copyFonts() {
  return gulp.src(PATHS.src.fonts)
    .pipe(gulp.dest(PATHS.dist.fonts));
}

function copyFontAwesome() {
  return gulp.src(PATHS.src.fontawesome)
    .pipe(gulp.dest(PATHS.dist.fonts));
}

function copyFavicons() {
  return gulp.src(PATHS.src.favicons)
    .pipe(gulp.dest(PATHS.dist.favicons));
}

// Development
gulp.task('serve', gulp.parallel(scss, js, copyImg, copyFonts, copyFontAwesome, copyFavicons))

// Production
gulp.task('build', gulp.parallel(scssBuild, jsBuild, copyImg, copyFonts, copyFontAwesome, copyFavicons))

// Default task (Serve and then watch for changes)
gulp.task('default', gulp.parallel('serve', watch))
