var gulp        = require('gulp'),
    jshint      = require('gulp-jshint'),
    sass        = require('gulp-sass'),
    neat        = require('node-neat').includePaths,
    concat      = require('gulp-concat'),
    uglify      = require('gulp-uglify'),
    rename      = require('gulp-rename'),
    livereload  = require('gulp-livereload'),
    browserify  = require('gulp-browserify');

    gulp.task('lint', function() {
      gulp.src(['app/*.js'])
          .pipe(jshint())
          .pipe(jshint.reporter('default'));
    });

    gulp.task('sass', function() {
      gulp.src(['stylesheets/*.scss'])
        .pipe(sass({
          includePaths: ['styles'].concat(neat)
        }))
        .pipe(rename('styles.css'))
        .pipe(gulp.dest('./public/assets/stylesheets'))
        .pipe(livereload());
    });

    gulp.task('scripts', function() {
      gulp.src(['app/main.js'])
          .pipe(browserify({
            debug: true,
            transform: [ 'coffee-reactify' ],
            extensions: [".cjsx"]
          }))
          .pipe(gulp.dest('./public/assets/scripts'))
          .pipe(livereload());
    });

    gulp.task('watch', function() {
        livereload.listen();
        gulp.watch(['app/*.js', 'app/**/*.cjsx'], ['lint', 'scripts']);
        gulp.watch('stylesheets/*.scss', ['sass']);
    });

gulp.task('default', ['lint', 'sass', 'scripts', 'watch']);
