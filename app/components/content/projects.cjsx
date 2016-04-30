React = require('react')
ContentSection = require('./content_section')
Project = require('./project')

Projects = React.createClass
  render: ->
    <ContentSection identifer='portfolio' show={this.props.show}>
      <h3>Portfolio</h3>
      <p>I contributed to the companies below either as a full-time employee or as a contractor.</p>
      <div className='projects'>
        <Project imageSrc='/images/projects/instacart.png'
          title='Instacart'
          link='https://instacart.com'
          description="<a href='https://instacart.com'>Instacart</a> is a $2 billion home grocery delivery company.
            I created Instacart's landing page and mobile web checkout. I also contributed to its SEO pages, email systems, in-house
            experiment framework, analytics platform, and several A/B experiments." />
        <Project imageSrc='/images/projects/skyfit.png'
          title='Skyfit'
          link='https://skyfitapp.com'
          description="<a href='https://skyfitapp.com'>Skyfit</a> is a workout app with tens of thousands of users. Skyfit plays trainer
            motivational speaking over curated music playlists.
            I created Skyfit's website end-to-end, including the mobile responsive homepage, its first non-Apple subscription and
            payment service, user signup/login, and referral/coupon code system that tied into its iOS app." />
        <Project imageSrc='/images/projects/scalablepress.png'
          title='Scalable Press'
          link='https://scalablepress.com'
          description="<a href='https://scalablepress.com'>Scalable Press</a> is an enterprise-class custom goods manufacturer that prints
            1M+ t-shirts per year.
            I created Scalable Press's first warehouse inventory system, its landing page, and contributed to several internal systems." />
        <Project imageSrc='/images/projects/therealreal.png'
          title='The RealReal'
          link='https://www.therealreal.com'
          description="<a href='https://www.therealreal.com'>The RealReal</a> is the world's largest fashion consignment market,
            with $200M+ in yearly revenue and 1M+ active users.
            I created The RealReal's mobile website in Q4 2013 that is still actively used today." />
      </div>
    </ContentSection>

module.exports = Projects
