// Include Gulp
var gulp = require('gulp');

// Polyfill so you don't need >= node 0.12
require('es6-promise').polyfill();

// Include plugins
var sass = require('gulp-sass');
var minifyCSS = require('gulp-clean-css');
var autoprefixer = require('gulp-autoprefixer');
var bless = require('gulp-bless');
var jshint = require('gulp-jshint');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var buffer = require('vinyl-buffer');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var glob = require('glob');
var es = require('event-stream');
var flatten = require('gulp-flatten');

// Compile and minify Javascript into one bundle file
gulp.task('js', function(done) {
    gulp.src('js/src/*.js', function(err, files) {
        if(err) done(err);

        var tasks = files.map(function(entry) {
            return browserify({ entries: [entry] })
                .bundle()
                .pipe(source(entry))
                .pipe(rename({
                    extname: '.bundle.js'
                }))
                .pipe(buffer())
                .pipe(uglify())
                .pipe(flatten())
                .pipe(gulp.dest('js/dist/'));
            });
        es.merge(tasks).on('end', done);
    })
});

// Check Javascript for code errors
gulp.task('jshint', function() {
    return gulp.src('./js/src/app.js')
        .pipe(jshint())
        .pipe(jshint.reporter('default'));
});

// Turn Scss into Css, prefix, bless and minify
gulp.task('scss', function () {
  return gulp.src('scss/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer({
      browsers: ['last 4 versions'],
      cascade: false,
      remove: false // set this to true if parsing library or legacy css code
    }))
    .pipe(bless())
    .pipe(minifyCSS())
    .pipe(gulp.dest('css/'));
});

// Watch files for saved changes
gulp.task('watch', function() {
    gulp.watch('scss/**/*.scss', ['scss']);
    gulp.watch('js/src/**/*.js', ['js']);
});

// Default task (recompile on init before watching)
gulp.task('default', ['scss', 'js', 'watch']);
