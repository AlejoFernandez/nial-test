var App = require('app');

App.IndexRoute = Em.Route.extend({
    renderTemplate: function () {
        var model = [{ name: 'Michael Jackson', songs: [{ name: 'Billie Jean' }, { name: 'Thriller'}] }],
            controller = Em.ArrayController.create({ content: model });

        this.render('index', { controller: controller });
    }
});

module.exports = App.IndexRoute;