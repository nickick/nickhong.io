React = require('react')

Header = React.createClass
  render: ->
    <div className="page-header">
      <div className='about-anchor' id='about'/>
      <span className='header-text'>
        <h1>Nick Hong</h1>
        <p>Web Developer, SF</p>
      </span>
      <div className='profile-pic animation--pop'>
        <img src='/images/profile.jpg'/>
      </div>
    </div>

module.exports = Header
