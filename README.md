Description
===========

Live rails example for [jsus](https://github.com/jsus/jsus) rack middleware.

Installation
============

1. `bundle install`
2.  `git submodule update --init`
3. `rails s thin` (Works with any server, thin is just somewhat faster)
4. Go to [http://localhost:3000](http://localhost:3000) and listen to what jsus says.

Things to notice
================

Caching is turned on and after first request you won't see any output in the console.

Cache directory is at /public/javascripts/jsus/require

Installation for your app
=========================

See config/application.rb, it's very simple.


License
=======

Application and libraries: UNLICENSE, same as jsus.

CKEditor and other files: look in the respective sources.
