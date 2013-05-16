var App = require('app');

App.IndexRoute = Em.Route.extend({
    model: function () {
        return [{ name: 'Michael Jackson', songs: [{ name: 'Billie Jean' }, { name: 'Thriller'}] }];
    },
    renderTemplate: function () {
        // var model = [{ name: 'Michael Jackson', songs: [{ name: 'Billie Jean' }, { name: 'Thriller'}] }],
        //     controller = Em.ArrayController.create({ content: model });

        // this.render('index', { controller: controller, outlet: 'content' });
        this.render('index');
        this.render('header', { outlet: 'header' });
    }
});

module.exports = App.IndexRoute;