React = require('react')
NavItem = require('./nav_item')
ContactLinks = require('./contact_links')
_ = require('underscore')

DesktopNav = React.createClass
  toggleNav: ->
    null

  goToPath: (item) ->
    this.props.goToPath(item)

  render: ->
    navItems = _.map ['About', 'Portfolio', 'Resume', 'Contact'], (item, i) =>
      <NavItem toggleNav={this.toggleNav}
               goToPath={this.goToPath}
               currentItem={this.props.currentItem}
               path={"/#{item.toLowerCase()}"}
               title={item}
               key={i} />

    <div className="desktop-nav">
      <ul>
        {navItems}
      </ul>
      <ContactLinks />
    </div>

module.exports = DesktopNav
