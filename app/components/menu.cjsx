React = require('react')
MenuItem = require('./menu_item')
cx = require('classnames')
_ = require('underscore')

Menu = React.createClass
  getInitialState: ->
    {
      menuOpen: false
      menuClosed: false
      loading: true
    }

  componentDidMount: ->
    this.setState(loading: false)

  toggleMenu: (_) ->
    this.setState(menuOpen: !this.state.menuOpen, menuClosed: !this.state.loading && this.state.menuOpen)

  goToPath: (item) ->
    this.props.goToPath(item)

  render: ->
    menuButtonClasses = cx({
      "menu-button": true
      white: this.props.currentItem == 'about' || this.state.menuOpen
      open: this.state.menuOpen
      close: this.state.menuClosed
    })

    menuClasses = cx({
      "menu": true
      open: this.state.menuOpen
      close: this.state.menuClosed
    })

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
