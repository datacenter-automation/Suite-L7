const mix = require('laravel-mix');
require('laravel-mix-banner');
require('laravel-mix-bundle-analyzer');
require('laravel-mix-compress-images');
require('laravel-mix-definitions');
require('laravel-mix-dload');
require('laravel-mix-remove-flow-types');
require('laravel-mix-svg-vue');
require('laravel-mix-tailwind');
require('laravel-mix-vue-auto-routing');
require('laravel-mix-workbox');
let LiveReloadPlugin = require('webpack-livereload-plugin');
let tailwindcss = require('tailwindcss');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.removeFlowTypes()
  .js('resources/js/app.js', 'public/js')
  .svgVue()
  .definition({
    $: 'jQuery',
    _: 'lodash'
  })
  .vueAutoRouting()
  .extract(['jquery', 'vue'])
  .compressImages(
    ['img\/**\/*'],
    'destination',
    {
      jpg: {
        engine: 'mozjpeg',
        command: ['-quality', '20']
      }
    }
  )
  .download({
    enabled: mix.inProduction(),
    urls: [
      {
        'url': 'https://www.google-analytics.com/analytics.js',
        'dest': './public/js/'
      },
    ],
  })
  .sass('resources/sass/app.scss', 'public/css')
  .options({
    processCssUrls: false,
    postCss: [tailwindcss('./tailwind.config.js')],
  })
  .generateSW()
  .banner({
    banner: (function () {
      return [
        '/**',
        ' * @project        Datacenter Automation Suite',
        ' * @author         A. Renner',
        ' * @release        0.0.1-alpha',
        ' *',
        ' */',
        '',
      ].join('\n');
    })(),
    raw: true,
  })
  .version()
  .copy('node_modules/font-awesome/fonts/*', 'public/fonts/')
  .copy('node_modules/material-design-iconic-font/dist/fonts/*', 'public/fonts/')
  .copy('node_modules/simple-line-icons/fonts/*', 'public/fonts/')
  .browserSync({
    open: false,
    plugins: [
      'bs-console-qrcode',
      'bs-latency',
      'bs-fullscreen-message',
      'bs-console-info',
      'bs-eslint-message']
  })
  .tailwind();

if (mix.isWatching()) {
  mix.bundleAnalyzer();
}

mix.babelConfig({
  plugins: ['@babel/plugin-syntax-dynamic-import'],
});

mix.webpackConfig({
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: 'ts-loader',
        options: {appendTsSuffixTo: [/\.vue$/]},
        exclude: /node_modules/,
      },
    ],
  },
  plugins: [
    new LiveReloadPlugin()
  ],
  resolve: {
    extensions: ['*', '.js', '.jsx', '.vue', '.ts', '.tsx'],
    alias: {
      '@components': path.resolve(__dirname, 'resources/js/Components/'),
      '@models': path.resolve(__dirname, 'resources/js/models/'),
      '@sections': path.resolve(__dirname, 'resources/js/sections/'),
      '@services': path.resolve(__dirname, 'resources/js/services/'),
    }
  },
});
