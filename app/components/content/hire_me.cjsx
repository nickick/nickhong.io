React = require('react')
cx = require('classNames')

HireMe = React.createClass
  getDefaultProps: ->
    text: 'Hire Me'

  getInitialState: ->
    showForm: this.props.showForm
    showThankYou: false
    loading: false
    formErrors: {
      email: ''
      subject: ''
      content: ''
    }

  reveal: ->
    this.setState(showForm: true)

  onFocus: (e) ->
    errors = this.state.formErrors
    errors[e.target.id] = ''
    this.setState(errors)

  validate: ->
    formErrors = { email: '', subject: '', content: '' }
    if !this.refs.email.value
      formErrors.email = 'Your email is required.'
    else
      emailRegExp = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i
      formErrors.email = 'Please enter a valid email.' if !emailRegExp.test(this.refs.email.value)

    formErrors.subject = 'This field is required.' if !this.refs.subject.value
    formErrors.content = 'This field is required.' if !this.refs.content.value

    if !!formErrors.email || !!formErrors.subject || !!formErrors.content
      this.setState(formErrors: formErrors)
      false
    else
      true

  submit: (e) ->
    e.preventDefault()

    return if this.state.loading
    return unless this.validate()

    this.setState(loading: true)
    request = new window.XMLHttpRequest()
    request.onreadystatechange = () =>
      if request.readyState == window.XMLHttpRequest.DONE
        this.setState(loading: false)
        if request.status == 200
          this.setState(showThankYou: true)
        else if request.status == 400
          this.setState(error: "There was an error with your request - please try later.")

    request.open("POST", "contact", true)
    params = "email=#{this.refs.email.value}&subject=#{this.refs.subject.value}&content=#{this.refs.content.value}"
    request.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
    request.send(params)

  button: ->
    if this.state.loading
      <button className='button' onClick={this.submit} disabled='true'>
        Sending <i className='fa fa-refresh fa-spin'/>
      </button>
    else
      <button className='button' onClick={this.submit}>
        Message me!
      </button>

  renderThankYou: ->
    <div className='contact-me-container thank-you'>
      <h2>Thank you <br/>for contacting me!</h2>
      <p>I'll be in touch soon.</p>
    </div>

  renderForm: ->
    <div className={cx({'contact-me-container': true, showForm: this.state.showForm})}>
      <button className='revealer button' onClick={this.reveal}>
        {this.props.text}
      </button>

      <form className='contact-me' onSubmit={this.submit}>
        <div className={cx('email-container': true, errored: !!this.state.formErrors.email)}>
          <label htmlFor='email'>Your email</label>
          <input type='text' id='email' name='email' ref='email' placeholder='email@example.com' onFocus={this.onFocus}/>
          <div className='error'>{this.state.formErrors.email}</div>
        </div>
        <div className={cx('subject-container': true, errored: !!this.state.formErrors.subject)}>
          <label htmlFor='subject'>Subject</label>
          <input type='text' id='subject' name='subject' ref='subject' placeholder='Work on a new website' onFocus={this.onFocus}/>
          <div className='error'>{this.state.formErrors.subject}</div>
        </div>
        <div className={cx('content-container': true, errored: !!this.state.formErrors.content)}>
          <label htmlFor='content'>Message</label>
          <textarea id='content' name='content' ref='content' placeholder='Hi Nick! I want to make...' rows='4' onFocus={this.onFocus}/>
          <div className='error'>{this.state.formErrors.content}</div>
        </div>
        {this.button()}
      </form>
    </div>

  render: ->
    if this.state.showThankYou then this.renderThankYou() else this.renderForm()

module.exports = HireMe
