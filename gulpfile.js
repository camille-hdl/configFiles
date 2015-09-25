var gulp = require('gulp');
var uglify = require('gulp-uglify');
var runSequence = require('run-sequence');
var babel = require('gulp-babel');
var sourcemaps = require('gulp-sourcemaps');
var concat = require('gulp-concat');
var notify = require("gulp-notify");
var wrap = require("gulp-wrap");

gulp.task('default', function() {
    
});


/**
Watchers
*/
gulp.task('watch-', function() {
    var sourceDir = "./site/lib/js/src/";
    var files = [
        "utils.js"
    ];
    var watcher = gulp.watch(files.map(function(v){return sourceDir+v;}), ["build-"]);
});


/**
Build
*/
gulp.task('build-', function() {
    var sourceDir = "./site/lib/js/src/";
    var distDir = "./site/lib/js/dist";
    var files = [
        "utils.js"
    ];

    gulp.src(files.map(function(v){return sourceDir+v;}))
        .pipe(sourcemaps.init())
        .pipe(concat("file.min.js"))
        .pipe(babel())
        .pipe(uglify({
            compress: true,
            mangle: false,
            output: {
                beautify: true,
                preamble: "/*  */"
            }
        }))
        .pipe(wrap('(function($, window) { "use strict"; <%= contents %>})(jQuery, window);'))
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(distDir));
});