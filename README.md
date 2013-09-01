PERSONAL FRONT-END BACKBONE, AMD, SASS, AND CHAI BOILERPLATE 
============================================================

ENVIRONMENT REQUIRED :
-----------------------

- [Node.js + NPM] (http://nodejs.org/download/) - Install first node.js

- [CoffeeScript] (http://coffeescript.org/) - Install CoffeeScript

        $ sudo npm install coffeescript -g

- [Compass (SAAS/SCSS)] (http://compass-style.org/) - Install Compass to use Saas or Scss

		$ gem update --system
		$ gem install compass


- [Jamjs] (http://jamjs.org/) - Install Jam, a Front-End Package manager.

		$ sudo npm install jamjs -g

- [JsDom] (https://github.com/tmpvar/jsdom) - Install JsDom, a client and server side dom template engine.

		$ sudo npm install jsdom -g

- [jquery] (http://jquery.com) - Install Jquery for node.js

		$ sudo npm install jquery -g

- [MOCHA] (http://visionmedia.github.io/mocha/) - Install Mocha, a test framework client and server side

		$ sudo npm install mocha -g

- [Test'em] (https://github.com/airportyh/testem) - Install Test’em!, a node.js script that allows you to test every browser at the same time using socket.io

		$ sudo npm install testem -g


AUTORUN :
---------

- OSX 10.8+ : launchers/apple.autorun.app : launch "Compass", "Coffee-script" and "Test'em" in terminal.


CONFIGURATION :
---------------

- Api : coffee/config.coffee

- Unit-test : unit-test/test/config.json


TUTORIAL AND GOOD PRACTICE :
----------------------------
	
First, launch the autorun. This one will allow you to compile automatically your coffeescript, Sass/Scss and run your unit tests on terminal in separated tabs.

Each modules must be defined in his own coffeescript file in the folder "coffee/app/modules". 

To test it, you must reference in the unit test configuration file and create a test file in the folder "unit-test/test/" with the extention ".spec.coffee".

Test'Em run automaticaly your unit test coffeescript and delete the js output after test.