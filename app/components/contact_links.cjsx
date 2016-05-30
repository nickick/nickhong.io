React = require('react')

ContactLinks = React.createClass
  render: ->
    <div className='contact-links'>
      <a href='https://www.twitter.com/msjintran' target="_blank" className='contact-link'>
        <i className='fa fa-twitter'/>
      </a>
      <a href='https://www.facebook.com/tran.jin' target="_blank" className='contact-link'>
        <i className='fa fa-facebook'/>
      </a>
      <a href='https://www.linkedin.com/in/jintran1' target="_blank" className='contact-link'>
        <i className='fa fa-linkedin'/>
      </a>
    </div>

module.exports = ContactLinks
