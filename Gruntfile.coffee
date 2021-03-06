module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.initConfig
    watch:
      coffee:
        files: '*.coffee'
        tasks: ['coffee:compile']
    coffee:
      compile:
        expand: true,
        flatten: true,
        cwd: "#{__dirname}",
        src: ['pvd*.coffee'],
        dest: "#{__dirname}",
        ext: '.js'
