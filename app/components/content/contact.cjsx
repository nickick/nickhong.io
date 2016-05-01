React = require('react')
HireMe = require('./hire_me')
ContentSection = require('./content_section')

Contact = React.createClass
  render: ->
    <ContentSection identifer='contact' show={this.props.show}>
      <div className='contact-links'>
        <a href='https://www.facebook.com/hong.nick/' className='contact-link'>
          <i className='fa fa-facebook-official'/>
        </a>
        <a href='https://www.linkedin.com/in/nickhong' className='contact-link'>
          <i className='fa fa-linkedin'/>
        </a>
        <a href='mailto:hong.nick@gmail.com' className='contact-link'>
          <i className='fa fa-envelope'/>
        </a>
      </div>
      <HireMe />
    </ContentSection>

module.exports = Contact
