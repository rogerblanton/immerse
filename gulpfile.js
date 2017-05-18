(function () {

    "use strict";

    var gulp = require('gulp');
    var plumber = require('gulp-plumber');
    var less = require('gulp-less');
    var path = require('path');
    var livereload = require('gulp-livereload');
    var exec = require('gulp-exec');
    var notify = require('gulp-notify');
    var gutil = require('gulp-util');
    var fs = require('fs');
    var props = JSON.parse(fs.readFileSync('./package.json'));
    var fileName;
    var fileToDeploy;
    var fileToDeployDestination;

    gulp.task('less', function () {
        return gulp.src(['content/**/*.less', '!content/target/**/*.less', '!content/**/vendor/**/*.less'])
            .pipe(plumber())
            .pipe(less())
            .pipe(gulp.dest('content/'));
    });

    var beepError = function (err) {
        gutil.beep();
        console.log(err);
    };

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

    gulp.task('dev', ['less','watch']);

}());

