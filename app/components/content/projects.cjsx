React = require('react')
ContentSection = require('./content_section')

Projects = React.createClass
  render: ->
    <ContentSection identifer='portfolio' show={this.props.show}>
      <h3>Portfolio</h3>
      <p>Past web products include <a href='https://www.instacart.com'>Instacart</a>, <a href='https://www.skyfitapp.com'>Skyfit</a>, <a href='https://www.therealreal.com'>The RealReal</a>, and <a href='https://www.scalablepress.com'> Scalable Press</a>.</p>
    </ContentSection>

module.exports = Projects
