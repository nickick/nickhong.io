React = require('react')
HireMe = require('./hire_me')
ContentSection = require('./content_section')
ContactLinks = require('../contact_links')

Contact = React.createClass
  render: ->
    <ContentSection identifer='contact' show={this.props.show}>
      <h3>Contact Me</h3>
      <ContactLinks />
      <hr/>
      <HireMe showForm={true} />
    </ContentSection>

module.exports = Contact
