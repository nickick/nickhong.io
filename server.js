var express = require('express'),
path = require('path');

var app = express();

require('node-cjsx').transform()

var port = 3000;
var bodyParser = require('body-parser');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(express.static(path.join(__dirname, 'public')));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

require('./app/routes/core_routes.js')(app);

app.get('*', function(req, res) {
  res.json({
    "route": "Sorry that page doesn't exist!"
  });
});

app.listen(port);

console.log('Server is running at port ' + port);
