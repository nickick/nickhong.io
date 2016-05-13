var React           = require('react'),
    ReactDOMServer  = require('react-dom/server'),
    ReactApp        = React.createFactory(require('../components/react_app'));

var mailer = require('../mailer');

module.exports = function(app) {
  app.get('/', function(req, res){
    var reactHtml = ReactDOMServer.renderToString(ReactApp({currentPath: '/about'}));
    res.render('index.ejs', {reactOutput: reactHtml});
  });

  app.post('/contact', mailer);

  app.get('/*', function(req, res){
    var reactHtml = ReactDOMServer.renderToString(ReactApp({currentPath: req.originalUrl }));
    res.render('index.ejs', {reactOutput: reactHtml});
  });
};
