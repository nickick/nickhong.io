React = require('react')
Intro = require('./content/intro')
Projects = require('./content/projects')
Resume = require('./content/resume')
Contact = require('./content/contact')
cx = require('classNames')

Content = React.createClass
  propTypes:
    currentItem: React.PropTypes.string.isRequired

  render: ->
    <div className={cx(content: true, "full-width": this.props.currentItem == 'about' )}>
      <Intro show={this.props.currentItem == 'about'} />
      <Projects show={this.props.currentItem == 'portfolio'} />
      <Resume show={this.props.currentItem == 'resume'} />
      <Contact show={this.props.currentItem == 'contact'} />
    </div>

module.exports = Content
