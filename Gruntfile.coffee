path = require('path')
fs = require('fs')

module.exports = (grunt) ->
	# Project configuration.
	grunt.initConfig
		pkg: grunt.file.readJSON('package.json')
		clean: ['build']
		copy:
			main:
				expand: true
				cwd: 'src/'
				src: ['**', '!includes/**', '!coffee/**', '!**/*.less']
				dest: 'build/'
		coffee:
			main:
				expand: true
				cwd: 'src/coffee'
				src: ['**/*.coffee']
				dest: 'build/js/'
				ext: '.js'
		less:
			main:
				expand: true
				cwd: 'src/style/'
				src: '*.less'
				dest: 'build/style/'
				ext: '.css'
		cssmin:
			main:
				expand: true
				cwd: 'build/style/'
				src: ['*.css', '!*.min.css']
				dest: 'build/style/min'
				ext: '.min.css'

		uglify:
			main:
				files: [{
					expand: true
					cwd: 'build/js/'
					src: ['*.js', '!*.min.js']
					dest: 'build/js/min'
					ext: '.min.js'
				}]

		concat:
			css:
				src: 'build/style/min/*.css'
				dest: 'build/style/min/all.min.css'
			js:
				src: 'build/js/min/*.js'
				dest: 'build/js/min/all.min.js'

		connect:
			main:
				options:
					port: 9001
					base: 'build/'
		watch:
			main:
				files: ['src/**/*.html', 'src/**/*.coffee', 'src/**/*.js', 'src/**/*.less', 'src/**/*.css', 'src/**/*.gif', 'src/**/*.png', 'src/**/*.jpg']
				tasks: ['dev']

	grunt.loadNpmTasks 'grunt-contrib-connect'
	grunt.loadNpmTasks 'grunt-contrib-concat'
	grunt.loadNpmTasks 'grunt-contrib-uglify'
	grunt.loadNpmTasks 'grunt-contrib-cssmin'
	grunt.loadNpmTasks 'grunt-contrib-copy'
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-less'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask 'default', ['dev-watch']

	# Dev
	grunt.registerTask 'dev', ['clean', 'copy', 'coffee', 'less', 'cssmin', 'uglify', 'concat:css', 'concat:js', 'remote']
	grunt.registerTask 'dev-watch', ['dev', 'connect', 'watch']

	#	Remote task
	grunt.registerTask 'remote', 'Run Remote proxy server', ->
		require 'coffee-script'
		require('remote')()