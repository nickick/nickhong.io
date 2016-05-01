React = require('react')
NavItem = require('./nav_item')
cx = require('classnames')
_ = require('underscore')

MobileNav = React.createClass
  getInitialState: ->
    {
      navOpen: false
      navClosed: false
      loading: true
    }

  componentDidMount: ->
    this.setState(loading: false)

  toggleNav: (_) ->
    this.setState(navOpen: !this.state.navOpen, navClosed: !this.state.loading && this.state.navOpen)

  goToPath: (item) ->
    this.props.goToPath(item)

  render: ->
    navButtonClasses = cx({
      "mobile-nav-button": true
      white: this.state.navOpen
      open: this.state.navOpen
      close: this.state.navClosed
    })

    navClasses = cx({
      "mobile-nav": true
      open: this.state.navOpen
      close: this.state.navClosed
    })

    navItems = _.map ['About', 'Portfolio', 'Resume', 'Contact'], (item, i) =>
      <NavItem toggleNav={this.toggleNav}
               goToPath={this.goToPath}
               currentItem={this.props.currentItem}
               path={"/#{item.toLowerCase()}"}
               title={item}
               key={i} />

    <div>
      <div className={navButtonClasses} onClick={this.toggleNav}>
        <div className="nav-button--bars">
          <div className="nav-button--bars--bar"/>
          <div className="nav-button--bars--bar"/>
          <div className="nav-button--bars--bar"/>
          <div className="nav-button--bars--bar"/>
        </div>
      </div>
      <div className={navClasses}>
        <ul>
          {navItems}
        </ul>
      </div>
    </div>

module.exports = MobileNav
