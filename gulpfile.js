// Include gulp
var gulp = require('gulp');

// Polyfill so we don't need >= node 0.12
require('es6-promise').polyfill();

// Include plugins
var sass = require('gulp-sass');
var minifyCSS = require('gulp-clean-css');
var autoprefixer = require('gulp-autoprefixer');
var bless = require('gulp-bless');

var browserify = require('browserify');
var source = require('vinyl-source-stream');
var buffer = require('vinyl-buffer');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var glob = require('glob');
var es = require('event-stream');
var flatten = require('gulp-flatten');

gulp.task('js', function(done) {
    gulp.src('js-source/*.js', function(err, files) {
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
                .pipe(gulp.dest('js/'));
            });
        es.merge(tasks).on('end', done);
    })
});


// Turn sass into css, prefix, minify and bless
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

// Watch files for changes
gulp.task('watch', function() {
    gulp.watch('scss/**/*.scss', ['scss']);
    gulp.watch('js-source/**/*.js', ['js']);
});

// Default task (recompile on init before watching)
gulp.task('default', ['scss', 'js', 'watch']);
