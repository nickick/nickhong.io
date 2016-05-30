React = require('react')
DesktopNav = require('./desktop_nav')

Header = React.createClass
  render: ->
    <div className='header-container'>
      <div className="header">
        <div className='about-anchor' id='about'/>
        <span className='header-text'>
          <h1>Jin Tran</h1>
          <p>Master of Social Work</p>
        </span>
        <DesktopNav goToPath={this.props.goToPath} currentItem={this.props.currentItem} />
      </div>
    </div>

module.exports = Header
