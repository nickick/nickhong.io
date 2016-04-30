React = require('react')
classNames = require('classnames')

NavItem = React.createClass
  goToPath: (e) ->
    this.props.toggleNav(e)
    this.props.goToPath(this.props.path)

  render: ->
    <li onClick={this.goToPath}>
      <a >
        {this.props.title}
      </a>
    </li>

module.exports = NavItem
