var gulp = require('gulp');
var elm  = require('gulp-elm');
 
gulp.task('elm', function(){
  return gulp.src('src/Main.elm', { optimize: true })
    .pipe(elm())
    .pipe(gulp.dest('dist/'));
});
 
gulp.task('elm-bundle', function(){
  return gulp.src('src/Main.elm', { optimize: true })
    .pipe(elm.bundle('bundle.js'))
    .pipe(gulp.dest('dist/'));
});


gulp.task('copy-static', function(){
  return gulp.src('src/static/**/*')
    .pipe(gulp.dest('dist/'))
})