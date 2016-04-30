React = require('react')
HireMe = require('./hire_me')
ContentSection = require('./content_section')
_ = require('underscore')

Intro = React.createClass
  content: ->
    {__html: _.map(this.intro.content, (contentSection) ->
      "<p>#{contentSection}</p>"
      ).join('')
    }

  render: ->
    <ContentSection identifer='intro' show={this.props.show} fullWidth={true} contentsWrap={false}>
      <div className='profile-pic animation--pop'>
        <img src='/images/profile.jpg'/>
      </div>
      <div className='intro-text'>
        <h3>{this.intro.header}</h3>
        <div dangerouslySetInnerHTML={this.content()}/>
        <div className='hire-me-container'>
          <HireMe />
        </div>
      </div>
    </ContentSection>

  intro:
    header: "Hi, I'm Nick"
    content: [
      "I'm a software engineer based in San Francisco."
      "I like to create <strong>beautiful websites</strong>, kickboxing, <span class='animate-untz'>EDM</span>, and black coffee. I take myself less seriously than the picture to the left suggests."
      "I focus on <strong>clarity, design, animation</strong>, and <strong>mobile responsiveness</strong>."
    ]

module.exports = Intro
