# Vtex Speed

A grunt coffee/less/connect/remote boilerplate for Vtex E-commerces.

Requires [node](http://nodejs.org/) and [grunt](http://gruntjs.com/) (`npm i -g grunt-cli`).

### Speedstart

    npm i
    (sudo) grunt

Have fun!

The compiled files can be found in the `/build` folder.

### Folder structure

- `src` - most of your files will be here.
    - `coffee` - CoffeeScript source files
    - `image` - Image source files
    - `js` - Javascript source files
	- `style` - CSS and LESS source files
- `Gruntfile.coffee` - This is the configuration file for grunt. Contains all the build tasks.
- `remote.json` - The configuration file for [Remote](https://github.com/gadr90/remote), if you need it.
- `build` - this folder will be created after you run a grunt task.

### Thanks

Vtexpeed was inspired in [Speedbag](https://github.com/vtex/speedbag). Thanks to [Guilherme Rodrigues](https://github.com/gadr90), the Speedbag's creator.

------
