const gulp = require('gulp');
const plumber = require('gulp-plumber');
const livereload = require('gulp-livereload');
const exec = require('gulp-exec');
const notify = require('gulp-notify');


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