React = require('react');
Intro = require('./content/intro');
Projects = require('./content/projects');
Skills = require('./content/skills');
Contact = require('./content/contact');

Content = React.createClass
  render: ->
    <div className="content">
      <Intro show={this.props.currentItem == 'about'} />
      <Projects show={this.props.currentItem == 'portfolio'} />
      <Skills show={this.props.currentItem == 'skills'} />
      <Contact show={this.props.currentItem == 'contact'} />
    </div>

module.exports = Content
