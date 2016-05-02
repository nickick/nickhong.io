React = require('react')
HireMe = require('./hire_me')
ContentSection = require('./content_section')
_ = require('underscore')

Intro = React.createClass
  listToHtml: (list) ->
    {__html: _.map(list, (contentSection) ->
      "<p>#{contentSection}</p>"
      ).join('')
    }

  content: ->
    this.listToHtml(this.intro.content)

  extraContent: ->
    this.listToHtml(this.intro.extraContent)

  render: ->
    <ContentSection identifer='intro' show={this.props.show}>
      <div className='profile-pic animation--pop'>
        <img src='/images/profile.jpg'/>
      </div>
      <div className='intro-text'>
        <h3>{this.intro.header}</h3>
        <div dangerouslySetInnerHTML={this.content()}/>
        <div className='hire-me-container'>
          <HireMe text='Make a website with me' showForm={false} />
        </div>
      </div>
    </ContentSection>

  intro:
    header: "Hi, I'm Nick."
    content: [
      "I'm a software engineer based in San Francisco. I like creating <strong>beautiful websites</strong> with <strong>unique designs, animations</strong>, and <strong>mobile responsiveness</strong>."
    ]
    extraContent: [
      "I also like kickboxing, <span class='animate-untz'>EDM</span>, and black coffee. I take myself less seriously than the picture to the left suggests."
    ]

module.exports = Intro
