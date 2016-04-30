React = require('react')
_ = require('underscore')

Experience = React.createClass
  propTypes: {
    experienceObj: React.PropTypes.object.isRequired
  }

  description: ->
    descriptionList = _.map(this.props.experienceObj.description, (descriptor) =>
      "<li>#{descriptor}</li>"
    ).join(' ')
    { __html: "<ul>#{descriptionList}</ul>" }

  render: ->
    experienceObj = this.props.experienceObj
    <div className='experience'>
      <div className='dates'>{experienceObj.dates}</div>
      <div className='company'>
        <a href={experienceObj.link}>{experienceObj.company}</a>
        <span className='company-description'>{experienceObj.companyDescription}</span>
      </div>
      <div className='title'>{experienceObj.title}<span className='tools'>{experienceObj.tools}</span></div>

      {<div className='description' dangerouslySetInnerHTML={this.description()} /> if experienceObj.description?}
    </div>

module.exports = Experience
