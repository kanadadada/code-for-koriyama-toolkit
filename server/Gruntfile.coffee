"use strict"

module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-contrib-connect"

  grunt.initConfig
    connect:
      server:
        options:
          port:       9000
          host:       "localhost"
          base:       "htdocs"
          keepalive:  true
