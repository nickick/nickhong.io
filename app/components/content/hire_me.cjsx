React = require('react')
cx = require('classNames')

HireMe = React.createClass
  getDefaultProps: ->
    text: 'Hire Me'

  getInitialState: ->
    showForm: this.props.showForm

  reveal: ->
    this.setState(showForm: true)

  submit: (e) ->
    e.preventDefault()
    console.log e

  render: ->
    <div className={cx({'contact-me-container': true, showForm: this.state.showForm})}>
      <button className='revealer button' onClick={this.reveal}>
        {this.props.text}
      </button>

      <form className='contact-me' onSubmit={this.submit}>
        <label htmlFor='email'>Your email</label>
        <input type='text' id='email' name='email' placeholder='email@example.com'/>
        <label htmlFor='subject'>Subject</label>
        <input type='text' id='subject' name='subject' placeholder='Work on a new website'/>
        <label htmlFor='content'>Message</label>
        <textarea id='content' name='content' placeholder='Hi Nick! I want to make...' rows='4'/>
        <button className='button' onClick={this.submit}>
          Message me!
        </button>
      </form>
    </div>

module.exports = HireMe
