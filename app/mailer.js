var nodemailer = require('nodemailer');

var transporter = nodemailer.createTransport({
  service: 'Mailgun',
  auth: {
    user: process.env.MAILGUN_USER,
    pass: process.env.MAILGUN_PASSWORD
  }
});

module.exports = function(req, res) {
  var mailOpts = {
    from: req.body.email,
    to: 'hong.nick+nickhongio@gmail.com',
    subject: req.body.subject,
    text: req.body.content
  };

  transporter.sendMail(mailOpts, function (err, response) {
    if(err) {
      res.send({error: err});
    } else {
      res.send({error: null, message: response});
    }
  });
};
