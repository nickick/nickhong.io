React = require('react');

SideLink = React.createClass
  render: ->
    <ContentSection identifer='intro' show={this.props.show} fullWidth={true}>
      <Header />
      <div className='intro-text'>
        <h3>Hi, I'm Nick.</h3>
        <p>I make <strong>beautiful websites.</strong></p>
        <p>I focus on <strong>clarity, design, animation</strong>, and <strong>mobile responsiveness</strong>.</p>
        <div className='hire-me-container'>
          <HireMe />
        </div>
      </div>
    </ContentSection>

module.exports = SideLink
