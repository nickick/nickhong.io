React = require('react')
MenuItem = require('./menu_item')
classNames = require('classnames')
_ = require('underscore')

Menu = React.createClass
  getInitialState: ->
    { menuOpen: false }

  toggleMenu: (_) ->
    this.setState(menuOpen: !this.state.menuOpen)

  goToPath: (item) ->
    this.props.goToPath(item)

  render: ->
    menuButtonClasses = classNames({
      "menu-button": true,
      white: this.props.currentItem == 'about' || this.state.menuOpen,
      open: this.state.menuOpen})
    menuClasses = classNames({"menu": true, open: this.state.menuOpen})
    menuItems = _.map ['About', 'Portfolio', 'Skills', 'Resume', 'Contact'], (item, i) =>
      <MenuItem toggleMenu={this.toggleMenu} goToPath={this.goToPath} path={"/#{item.toLowerCase()}"} title={item} key={i} />

    <div>
      <div className={menuButtonClasses} onClick={this.toggleMenu}>
        <div className="menu-button--bars">
          <div className="menu-button--bars--bar"/>
          <div className="menu-button--bars--bar"/>
          <div className="menu-button--bars--bar"/>
          <div className="menu-button--bars--bar"/>
        </div>
      </div>
      <div className={menuClasses}>
        <ul>
          {menuItems}
        </ul>
      </div>
    </div>

module.exports = Menu
