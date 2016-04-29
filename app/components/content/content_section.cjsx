React = require('react')
cx = require('classNames')

ContentSection = React.createClass
  getInitialState: ->
    {
      hiding: false
      showing: false
      hide: !this.props.show
      show: this.props.show
      loading: true
    }

  componentDidMount: ->
    this.setState(loading: false)

  componentWillReceiveProps: (props) ->
    this.setDisplayState(props)

  setDisplayState: (props) ->
    # start hiding if it was showing (state.show) but is now not showing
    # start showing if it is now showing
    this.setState(
      hiding: !this.state.loading && !props.show && this.state.show
      showing: !this.state.loading && props.show && !this.state.loading
      hide: false
      show: false
    )

  componentWillUpdate: (state) ->
    this.refs.element?.addEventListener 'animationend', this.resetStates

  resetStates: (e) ->
    if e.animationName == 'blurOut' # hide this component
      state = { hiding: false, showing: false, hide: true, show: false }
    else if e.animationName == 'slideUp' # show this component
      state = { hiding: false, showing: false, hide: false, show: true }
    this.setState(state)
    this.refs.element?.removeEventListener 'animationend', this.resetStates

  classNames: ->
    cx(
      hideable: true
      'content-section': true
      "#{this.props.identifer}": true
      'full-width': this.props.fullWidth
      show: this.state.show
      hidden: this.state.hide
      showing: !this.state.loading && this.state.showing
      hiding: !this.state.loading && this.state.hiding
    )

  render: ->
    <div ref='element' className={this.classNames()} id={this.props.identifier}>
      {this.props.children}
    </div>

module.exports = ContentSection