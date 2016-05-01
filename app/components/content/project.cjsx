React = require('react')

Project = React.createClass
  propTypes: {
    imageSrc: React.PropTypes.string.isRequired
    title: React.PropTypes.string.isRequired
    description: React.PropTypes.string.isRequired
    link: React.PropTypes.string.isRequired
  }

  description: ->
    { __html: this.props.description }

  render: ->
    <div className='project'>
      <a href={this.props.link} className='title-link' target="_blank">
        <h4 className='title'>{this.props.title}</h4>
      </a>
      <div className='image-container-container'>
        <div className='image-container'>
          <img className='image' src={this.props.imageSrc}/>
        </div>
      </div>
      <div className='description-container'>
        <p className='description' dangerouslySetInnerHTML={this.description()}/>
      </div>
    </div>

module.exports = Project
