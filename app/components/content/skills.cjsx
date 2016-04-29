React = require('react')
ContentSection = require('./content_section')

Skills = React.createClass
  render: ->
    <ContentSection identifer='skills' show={this.props.show}>
      <h3>Skills</h3>
      <p>I work in Ruby on Rails, Node.js, React.js, Backbone.js, HTML5, CSS3, JavaScript, PostgreSQL, MySQL, and MongoDB.</p>
      <p>This blog uses isomorphic React templates, hot-loading on a Node/Express backend hosted on a Digital Ocean server.</p>
    </ContentSection>

module.exports = Skills
