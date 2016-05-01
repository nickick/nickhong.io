React = require('react')
cx = require('classnames')

NavItem = React.createClass
  propTypes: ->
    toggleNav: React.PropTypes.func.isRequired
    goToPath: React.PropTypes.func.isRequired
    title: React.PropTypes.string.isRequired
    currentItem: React.PropTypes.string.isRequired

  goToPath: (e) ->
    this.props.toggleNav(e)
    this.props.goToPath(this.props.path)

  render: ->
    <li onClick={this.goToPath} className={cx({'nav-item': true, current: this.props.currentItem == this.props.title.toLowerCase()})}>
      <a >
        {this.props.title}
      </a>
    </li>

module.exports = NavItem
