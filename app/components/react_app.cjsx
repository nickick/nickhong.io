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
        this.setState(currentItem: e.state.item)

  goToPath: (path) ->
    item = path.substr(1)
    if item != this.state.currentItem
      window.history.pushState({item}, "#{item}", path)
      this.setState(currentItem: item)

  render: ->
    <div id="react-app">
      <Menu goToPath={this.goToPath} currentItem={this.state.currentItem} />
      <Content currentItem={this.state.currentItem} />
    </div>

module.exports = ReactApp
