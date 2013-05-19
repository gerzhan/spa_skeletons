// Generated by CoffeeScript 1.6.2
require.config({
  baseUrl: "js/",
  paths: {
    jquery: 'libs/jquery.min',
    bootstrap: 'libs/bootstrap.min',
    modernizr: 'libs/modernizr.min'
  },
  shim: {
    bootstrap: {
      'deps': ['jquery'],
      'exports': 'bootstrap'
    }
  }
});

require(["jquery", "modernizr", "bootstrap"], function($) {});
