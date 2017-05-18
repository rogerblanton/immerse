(function () {

    "use strict";

    const gulp = require('gulp');
    const plumber = require('gulp-plumber');
    const less = require('gulp-less');
    const path = require('path');
    const livereload = require('gulp-livereload');
    const exec = require('gulp-exec');
    const autoprefixer = require('gulp-autoprefixer');
    const notify = require('gulp-notify');
    const gutil = require('gulp-util');
    const fs = require('fs');
    const jshint = require('gulp-jshint');

    var props = JSON.parse(fs.readFileSync('./package.json'));
    var fileName, fileToDeploy, fileToDeployDestination;

    var beepError = function (err) {
        gutil.beep();
        console.log(err);
    };

    // compile less to css
    gulp.task('less', function () {
        return gulp.src(['content/**/*.less', '!content/target/**/*.less', '!content/**/vendor/**/*.less'])
            .pipe(plumber())
            .pipe(less())
            .pipe(autoprefixer({
                browsers: ['last 2 versions'],
                cascade: false
            }))
            .pipe(gulp.dest('content/'));
    });

    //
    gulp.task('scripts', function () {
        return gulp.src(['content/**/*.js', '!content/target/**/*.js', '!content/**/vendor/**/*.js'])
            .pipe(plumber())
            .pipe(jshint())
            .pipe(jshint.reporter('default'));
    });

    //Curl front end files to AEM
    gulp.task('deploy', function () {
        return gulp.src('')
            .pipe(plumber({
                errorHandler: beepError
            }))
            .pipe(exec('curl -u ' + props.gulpProps.aemServer.username + ':' + props.gulpProps.aemServer.password + ' -s -T ' + fileToDeploy + ' ' + props.gulpProps.aemServer.protocol + '://' + props.gulpProps.aemServer.host + ':' + props.gulpProps.aemServer.port + fileToDeployDestination))
            .pipe(notify({
                onLast: true,
                title: 'Deploy Complete',
                message: fileToDeploy + ' has successfully been published to AEM',
                icon: path.join(__dirname, "gulp/gulp-icon.png")
            }))
            .pipe(livereload());
    });

    gulp.task('watch', function () {
        //initialize live reload
        livereload.listen();

        //watch CSS files for changes and trigger the CURL to local AEM
        gulp.watch(['**/*.css', '**/*.txt', '**/*.html', '**/*.js'], function (event) {

            var path = event.path,
                fileNameRegEx = /([^\/]+)$/g,
                pathRegex = /([\w]*content)/;

            //define our paths for curl
            fileToDeploy = pathRegex.exec(path);
            fileToDeploy = path.slice(fileToDeploy.index);
            fileToDeployDestination = path.split("jcr_root")[1];
            fileName = fileNameRegEx.exec(path);
            fileToDeployDestination = fileToDeployDestination.split(fileName)[0];

            // call the deploy task
            gulp.start('deploy');

        });

        // watch less files and compile them when they are changed, this will trigger a change on the CSS file and
        // thus trigger the deploy task as well.
        gulp.watch('**/*.less', ['less']);
    });

    gulp.task('dev', ['watch']);

}());

