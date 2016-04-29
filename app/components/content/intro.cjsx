React = require('react');
Header = require('./header');
HireMe = require('./hire_me');
classNames = require('classNames');

Intro = React.createClass
  render: ->
    <div className={classNames({intro: true, hideable: true, show: this.props.show})}>
      <Header />
      <div className='content-section intro-text'>
        <h3>Hi, I'm Nick.</h3>
        <p>I make <strong>beautiful websites.</strong></p>
        <p>I focus on <strong>clarity, design, animation</strong>, and <strong>mobile responsiveness</strong>.</p>
        <div className='hire-me-container'>
          <HireMe />
        </div>
      </div>
    </div>

module.exports = Intro
