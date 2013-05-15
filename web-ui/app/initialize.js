// ===== Namespace =====
var App = require('app');


// ===== Router =====
App.Router.map(function () {
    this.route('index', { path: '/' });
});

// ===== Routes =====
require('routes');

// ===== Data =====
require('data');

// ===== Models =====
require('models');

// ===== Views =====
require('views')

// ===== Controllers =====
require('controllers');

// ===== Helpers =====
require('helpers');

// ===== Templates =====
require('templates');
