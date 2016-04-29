React = require('react')
HireMe = require('./hire_me')
classNames = require('classNames')

Content = React.createClass
  render: ->
    <div className={classNames({'hire-me-bottom': true, 'content-section': true, hideable: true, show: this.props.show})} id='contact'>
      <HireMe />
    </div>

module.exports = Content
