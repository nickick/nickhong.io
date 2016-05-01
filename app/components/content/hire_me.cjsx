React = require('react');

HireMe = React.createClass
  getDefaultProps: ->
    text: 'Hire Me'
  render: ->
    <div className='button'>
      {this.props.text}
      <i className='fa fa-share-alt'/>
    </div>

module.exports = HireMe
