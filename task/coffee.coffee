gulp     = require 'gulp'
coffee   = require 'gulp-coffee'
uglify   = require 'gulp-uglify'

$ =
  src:  './src/coffee/**/*.coffee'
  dist: './dist/js/'

gulp.task 'coffee', ->
  gulp.src $.src
  .pipe coffee()
  .pipe uglify mangle: false# without mangling for AngularJS
  .pipe gulp.dest $.dist
