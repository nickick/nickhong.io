React = require('react')
classNames = require('classNames')

Projects = React.createClass
  render: ->
    <div className={classNames({projects: true, hideable: true, 'content-section': true, show: this.props.show})} id='portfolio'>
      <h3>Portfolio</h3>
      <p>Past web products include <a href='https://www.instacart.com'>Instacart</a>, <a href='https://www.skyfitapp.com'>Skyfit</a>, <a href='https://www.therealreal.com'>The RealReal</a>, and <a href='https://www.scalablepress.com'> Scalable Press</a>.</p>
    </div>

module.exports = Projects
