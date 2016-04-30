React = require('react')

ShortExperience = React.createClass
  propTypes: {
    experienceObj: React.PropTypes.object.isRequired
  }

  description: ->
    { __html: this.props.experienceObj.description }

  render: ->
    experienceObj = this.props.experienceObj
    <div className='experience'>
      <div className='dates'>{experienceObj.dates}</div>
      <div className='company'>{experienceObj.company}</div>
      <div className='title'>{experienceObj.title}</div>
      <div className='description' dangerouslySetInnerHTML={this.description()} />
    </div>

module.exports = ShortExperience
