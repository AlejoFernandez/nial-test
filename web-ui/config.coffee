sysPath = require 'path'

exports.config =
    # See http://brunch.io/#documentation for documentation.
    files:
        javascripts:
            joinTo:
                'javascripts/app.js': /^app/
                'javascripts/vendor.js': /^vendor/
                'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/

            order:
                before: [
                    'vendor/scripts/console-polyfill.js'
                    'vendor/scripts/jquery-1.9.1.js'
                    'vendor/scripts/handlebars-1.0.rc.3.js'
                    'vendor/scripts/ember-1.0.0-rc.3.js'
                ]

        stylesheets:
            joinTo:
                'stylesheets/app.css': /^(app|vendor)/
            order:
                before: ['vendor/styles/normalize.css']

        templates:
            precompile: true
            root: 'templates'
            joinTo: 'javascripts/app.js' : /^app/

            modules:
                addSourceURLs: true

    # allow _ prefixed templates so partials work
    conventions:
        ignored: (path) ->
            startsWith = (string, substring) ->
                string.indexOf(substring, 0) is 0
            sep = sysPath.sep
            if path.indexOf("app#{sep}templates#{sep}") is 0
                false
            else
                startsWith sysPath.basename(path), '_'
    jshint:
        pattern: /^(app)\/(?!vendor\/).*\.js$/
        options:
          bitwise: true
          camelcase: true
          curly: true
          eqeqeq: true
          forin: true
          immed: true
          indent: 4
          latedef: true
          newcap: true
          noarg: true
          noempty: true
          nonew: true
          plusplus: false
          quotmark: true
          regexp: true
          undef: true
          unused: false
          strict: false
          trailing: true
          browser: true
          es5: true
          jquery: true
          node: true
        globals:
          describe: true
          chai: true
          it: true
          Em: true
          jQuery: true
          moment: true
          hex_md5: true
          DS: true
          module: true
          hexMd5: true
          assert: true
          expect: true
          ZeroClipboard: true
          Dropzone: true

