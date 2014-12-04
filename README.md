Tabula Rasa
==================

A blank web slate to compile code and launch a static web server with live reload.

Bundles support for:
- Slim
- Sass & SCSS
- Coffeescript
- Normalize
- RequireJS
- jQuery
- JSHint
- Nodeunit
- LiveReload

Install
-------
Install required gems and node packages.

```
gem install compass slim compass-normalize
npm install
```

Usage
-----
Simply run Grunt.
```
grunt
```

Production
----------
1. Change js/main to js/main.min in slim/index.slim
2. Change Config.rb to compressed output and recompile
3. Run `grunt shell:optimizer`

Troubleshooting
---------------
### Compass not compiling?
- try removing `compass-rails` gem.
- try using a fresh gem bundle
