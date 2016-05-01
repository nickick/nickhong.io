React = require('react')
cx = require('classNames')

ContentSection = React.createClass
  propTypes: {
    identifer: React.PropTypes.string.isRequired
    show: React.PropTypes.bool.isRequired
    children: React.PropTypes.oneOfType([React.PropTypes.array, React.PropTypes.node]).isRequired
  }

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
    if e.animationName == 'hide'
      state = { hiding: false, showing: false, hide: true, show: false }
    else if e.animationName == 'show'
      state = { hiding: false, showing: false, hide: false, show: true }
    else
      return
    this.setState(state)
    this.refs.element?.removeEventListener 'animationend', this.resetStates

  classNames: ->
    cx(
      hideable: true
      'content-section': true
      "#{this.props.identifer}": true
      show: this.state.show
      hidden: this.state.hide
      showing: !this.state.loading && this.state.showing
      hiding: !this.state.loading && this.state.hiding
    )

  render: ->
    <div ref='element' className={this.classNames()} id={this.props.identifier}>
      <div className='contents'>
        {this.props.children}
      </div>
    </div>

module.exports = ContentSection
