React = require('react')

ContactLinks = React.createClass
  render: ->
    <div className='contact-links'>
      <a href='https://www.facebook.com/hong.nick/' className='contact-link'>
        <i className='fa fa-facebook-official'/>
      </a>
      <a href='https://www.linkedin.com/in/nickhong' className='contact-link'>
        <i className='fa fa-linkedin'/>
      </a>
      <a href='https://github.com/nickick' className='contact-link'>
        <i className='fa fa-github'/>
      </a>
    </div>

module.exports = ContactLinks
