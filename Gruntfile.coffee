module.exports = (grunt)->

  # Project Configuration
  grunt.initConfig(
    pkg: grunt.file.readJSON 'package.json'
    compass: {
      build: {
        # NOTE -> Compass Options are in Config.rb
      }
    }
    slim: {
      options:{
        pretty: 'true'
      }
      build: {
        files: {
          'index.html' : './slim/index.slim'
        }
      }
    }
    connect: {
      server: {
      }
    }
    shell: {
      optimizer:{
        command: 'node js/modules/vendor/r.js -o js/build.js'
      }
    }
    watch: {
      slim:{
        files: ['./slim/index.slim']
        tasks: ['slim']
        options: {
          livereload: true
        }
      }
      sass: {
        files: ['./sass/*.sass', './sass/*.scss']
        tasks: ['compass']
        options: {
          livereload: true
        }
      }
      coffee: {
        files: ['./js/**/*.js', './js/**/*.coffee']
        # tasks: ['shell:optimizer']
        options: {
          livereload: true
        }
      }
    }
  )

  # Load Plugins
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-slim'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-shell'

  # Register Tasks
  grunt.registerTask 'default', ['connect', 'watch']
