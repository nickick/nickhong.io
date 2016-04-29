React = require('react')
classNames = require('classNames')

Skills = React.createClass
  render: ->
    <div className={classNames({skills: true, hideable: true, show: this.props.show})} id="skills">
      <h3>Skills</h3>
      <p>I work in Ruby on Rails, Node.js, React.js, Backbone.js, HTML5, CSS3, JavaScript, PostgreSQL, MySQL, and MongoDB.</p>
      <p>This blog uses isomorphic React templates, hot-loading on a Node/Express backend hosted on a Digital Ocean server.</p>
    </div>

module.exports = Skills
