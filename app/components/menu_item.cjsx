React = require('react')
classNames = require('classnames')

MenuItem = React.createClass
  goToPath: (e) ->
    this.props.toggleMenu(e)
    this.props.goToPath(this.props.path)

  render: ->
    <li onClick={this.goToPath}>
      <a >
        {this.props.title}
      </a>
    </li>

module.exports = MenuItem
