React = require('react')
ContentSection = require('./content_section')
Experience = require('./resume/experience')
ShortExperience = require('./resume/short_experience')

Resume = React.createClass
  render: ->
    <ContentSection identifer='resume' show={this.props.show}>
      <div className='resume-header'>
        <h2>Nicholas Hong</h2>
        <a href='mailto:hong.nick@gmail.com' className='email'>hong.nick@gmail.com</a> |
        <a href='http://www.nickhong.io' className='website'>nickhong.io</a>
      </div>
      <div className='resume-section experiences'>
        <h3>Experience</h3>
        <Experience experienceObj = this.experiences.instacart />
        <Experience experienceObj = this.experiences.scalablePress />
        <Experience experienceObj = this.experiences.theRealReal />
        <ShortExperience experienceObj = this.experiences.satRocket />
        <ShortExperience experienceObj = this.experiences.parkIntuit />
        <ShortExperience experienceObj = this.experiences.bostonConsultingGroup />
      </div>
      <div className='resume-section education'>
        <h3>Education</h3>
        <div className='school'>
          <div className='dates'>June 2010</div>
          <div className='name'>Massachusetts Institute of Technology</div>
          <div className='major'>Management Science, GPA 4.1/5.0</div>
        </div>
      </div>
      <div className='resume-section skills'>
        <h3>Skills</h3>
        <p>Ruby, Rails, Redis, MySQL, PostGreSQL, MongoDB, Javascript, jQuery, Backbone.js, React.js, Angular.js,  Node.js, Express.js, Spree, Rspec, HTML5, CSS3, Git, Excel</p>
      </div>
      <div className='resume-section skills'>
        <h3>Other interests</h3>
        <p>Martial Arts (Muay Thai, BJJ, MMA), Fitness, EDM</p>
      </div>
    </ContentSection>

  experiences:
    instacart:
      company:            'Instacart'
      companyDescription: 'Grocery delivery company valued at $2B+'
      link:               'https://instacart.com'
      title:              'Senior Software Engineer'
      tools:              'Rails, React, Backbone, ElasticSearch, PostgreSQL, AWS, Redis, Sidekiq, Git'
      dates:              'June 2015 - April 2016'
      description: [
        "Owner of landing page, mobile-web checkout, mobile-web multisearch, and other features"
        "Contributed to implementation of landing page, SEO pages, internal email delivery, internal experiment framework, and other growth-related features"
      ]

    scalablePress:
      company:            'Scalable Press'
      companyDescription: 'Enterprise-class custom print manufacturing'
      link:               'https://scalablepress.com'
      title:              'Software Engineer'
      tools:              'NodeJS, AngularJS, MongoDB, AWS, Git'
      dates:              'December 2014 - May 2015'
      description: [
        "Designed and created first company warehouse inventory tracking system to track 1M+ shirts printed per year"
        "Contributed to consumber facing web products, order tracking systems, and customer support admin systems"
      ]

    theRealReal:
      company:            'The RealReal'
      companyDescription: "World's largest consignment marketplace"
      link:               'https://therealreal.com'
      title:              'Software Engineer'
      tools:              'Rails, ElasticSearch, MySQL, AWS, Redis, Resque'
      dates:              'June 2013 - November 2014'
      description: [
        "Created mobile web adaptive website for The RealReal"
        "Contributed to new consignment flow, quicker product pages, ElasticSearch implementation, and various other features"
      ]

    satRocket:
      company:            'SAT Rocket'
      description: 'Provided comprehensive and easy-to-use SAT preparation course at affordable prices'
      title:              'Cofounder'
      dates:              'June 2012 - December 2012'

    parkIntuit:
      company:            'ParkIntuit'
      description:        "Created RFID-enabled parking solutions at Duke University and American Tobacco Campus' Ballpark"
      title:              'Cofounder'
      dates:              'July 2011 - June 2012'

    bostonConsultingGroup:
      company:            'The Boston Consulting Group'
      description:        "Analyzed and advised finances and operational strategies for multiple Fortune 100 clients"
      title:              'Associate'
      dates:              'July 2010 - June 2011'

module.exports = Resume
