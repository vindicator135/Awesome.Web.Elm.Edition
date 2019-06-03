var gulp  = require('gulp'),
    elm = require('gulp-elm'),
    connect = require('gulp-connect'),
    clean = require('gulp-clean'),
    gutil = require('gulp-util');
  
var paths = {
  dest : 'dist/',
  src : 'src/**/*.elm',
  static : 'src/static/**/*'
}

gulp.task('elm-bundle', function(){
  return gulp.src('src/Main.elm', { optimize: true })
    .pipe(elm.bundle('bundle.js'))
    .pipe(gulp.dest(paths.dest));
});

gulp.task('copy-static', function(){
  return gulp.src(paths.static)
    .pipe(gulp.dest(paths.dest));
})

gulp.task('clean', function(){
  return gulp.src(paths.dest, { read: false })
    .pipe(clean());
})

gulp.task('build', gulp.series('elm-bundle', 'copy-static'));

gulp.task('watch', function(){
  gulp.watch(paths.src, gulp.series('elm-bundle'));
  gulp.watch(paths.static, gulp.series('copy-static'));
})

gulp.task('connect', function(){
  connect.server({
    root: 'dist',
    port: 8001
  })
})

gulp.task('build-connect', gulp.series('build', 'connect'));

gulp.task('default',  gulp.parallel('watch','build-connect'));

