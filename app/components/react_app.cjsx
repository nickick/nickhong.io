React = require('react')
Content = require('./content')
Menu = require('./menu')
smoothScroll = require('smoothscroll')

ReactApp = React.createClass
  getInitialState: ->
    {currentItem: this.props.currentPath.substr(1) || 'about'}

  componentWillMount: ->
    if window?
      window.addEventListener 'popstate', (e) =>
        console.log e.state
        this.scrollToItem(e.state.item)

  scrollToItem: (itemName) ->
    if window?
      item = window.document.getElementById("#{itemName}")
      if item?
        smoothScroll(item)
      else
        window.document.addEventListener "DOMContentLoaded", this.scrollToItem.bind(this, itemName)

  goToPath: (path) ->
    item = path.substr(1)
    window.history.pushState({item}, "#{item}", path)
    this.setState({currentItem: item})
    this.scrollToItem(item)

  render: ->
    this.scrollToItem(this.props.currentPath.substr(1)) if this.props.currentPath?
    <div id="react-app">
      <Menu goToPath={this.goToPath} currentItem={this.state.currentItem} />
      <Content currentItem={this.state.currentItem} />
    </div>

module.exports = ReactApp
