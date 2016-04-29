React = require('react')
HireMe = require('./hire_me')
ContentSection = require('./content_section')

Content = React.createClass
  render: ->
    <ContentSection identifer='contact' show={this.props.show}>
      <HireMe />
    </ContentSection>

module.exports = Content
