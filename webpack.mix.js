let mix = require('laravel-mix');
let glob = require('glob');

const path = require('path');
let directory = path.basename(path.resolve(__dirname));

mix.options({
    processCssUrls: false,
    clearConsole: true,
    terser: {
        extractComments: false,
    }
});

// Run all webpack.mix.js in app
glob.sync('./platform/**/**/webpack.mix.js').forEach(item => require(item));

// Run only for a package, replace [package] by the name of package you want to compile assets
// require('./platform/packages/[package]/webpack.mix.js');

// Run only for a plugin, replace [plugin] by the name of plugin you want to compile assets
// require('./platform/plugins/[plugin]/webpack.mix.js');

// Run only for themes, you shouldn't modify below config, just uncomment if you want to compile only theme's assets
// glob.sync('./platform/themes/**/webpack.mix.js').forEach(item => require(item));

if (mix.inProduction()) {
      mix
      .copyDirectory(directory + '/../public/themes',  directory + '/../public/build/themes')
      .copyDirectory(directory + '/../public/vendor',  directory + '/../public/build/vendor');
}
