var gulp = require('gulp');
var del = require('del');
var hash = require('gulp-hash');
var rename = require('gulp-rename');
var imageCacheBurst = require('gulp-css-image-cache-burst');
var stripDebug = require('gulp-strip-debug');
var concat = require('gulp-concat');
var replace = require('gulp-string-replace');

gulp.task('production_js', function() {

  return gulp.src(['public/js/*.js'])
    .pipe(concat('bundle.js'))
  	.pipe(hash())
    .pipe(stripDebug())
  	.pipe(gulp.dest('public/build/js'))
  	.pipe(hash.manifest('public/mix-manifest.json'))
    .pipe(replace('bundle.js":"bundle-', '/js/bundle.js":"/js/bundle-'))
  	.pipe(gulp.dest('.'));

});

gulp.task('production_css', function() {

  gulp.src(['public/css/*.css'])
    .pipe(concat('bundle.css'))
  	.pipe(hash())
    .pipe(imageCacheBurst({name:'v'}))
  	.pipe(gulp.dest('public/build/css'))
  	.pipe(hash.manifest('public/mix-manifest.json'))
    .pipe(replace('bundle.css":"bundle-', '/css/bundle.css":"/css/bundle-'))
  	.pipe(gulp.dest('.'));

});

gulp.task("delete_manifest", function() {
    return del(['public/mix-manifest.json'], {force: true});
});

function defaultTask(cb) {
  // place code for your default task here

}

exports.default = defaultTask;
