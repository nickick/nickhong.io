React = require('react')
ContentSection = require('./content_section')
Experience = require('./resume/experience')
ShortExperience = require('./resume/short_experience')

Resume = React.createClass
  render: ->
    <ContentSection identifer='resume' show={this.props.show}>
      <div className='resume-header'>
        <h2>Jin Tran</h2>
        <a href='http://jintran.com' className='website'>jintran.com</a>
      </div>
      <div className='resume-section skills'>
        <h3>Skills</h3>
        <p><strong>Cross Functional Relationship Management</strong>: Project execution alongside stakeholders of different
        levels and backgrounds, from leading weekly meetings with C-level executives to managing partners and client
        communities online and in the field.</p>
        <p><strong>Process Creation and Optimization</strong>: Scrappy with strategy, implementation, testing, and analysis</p>
        <p><strong>Cross Cultural and Multilingual</strong>: Lived and worked one year in India. Fluent English and
        Shantounese; proficient Mandarin, Cantonese, and French; basic Hindi</p>
        <p><strong>Project and Email Management Tools</strong>: JIRA, GoogleDocs, Excel, SQL; Salesforce, EmailDirect, HTML</p>
      </div>
      <div className='resume-section experiences'>
        <h3>Experience</h3>
        <Experience experienceObj = this.experiences.facebook />
        <Experience experienceObj = this.experiences.pley />
        <Experience experienceObj = this.experiences.live365 />
        <Experience experienceObj = this.experiences.crowdera />
        <Experience experienceObj = this.experiences.grayMattersCapital />
      </div>
      <div className='resume-section education'>
        <h3>Education</h3>
        <div className='name'>Stanford University</div>
        <div className='major'>Certificate for Introduction to Databases, 2013</div>
          <div className='name'>Monterey Institute of International Studies</div>
        <div className='major'>Certificate in Social Entrepreneurship, 2013</div>
        <div className='name'>Washington University in St. Louis</div>
        <div className='major'>Master of Social Work, Social and Economic Development 2011 | 3.8 GPA</div>
        <ul><li>Research Assistant for Dr. Aaron Hipp: Focus groups for Social Ecological Constraints to Park Use in Communities with Proximate Park Access. Presented at symposium May 2011 in Chicago Environmental Research Design Conference</li></ul>
        <div className='major'>Bachelor of Arts in Psychology, Pre-Medical Program, 2009</div>
        <ul><li>Minor in Chinese, Eliot Scholar</li></ul>
      </div>
    </ContentSection>

  experiences:
    facebook:
      company:            'Facebook'
      companyDescription: 'Social platform with over 1.6 billion users'
      link:               'http://facebook.com'
      title:              'Media Support Coordinator'
      tools:              ''
      dates:              'April 2016 - Current'
      description: [
        "Scaled onboarding of influencers to Facebook Live with email campaigns and direct support"
        "As a team of four, responsible for 44% of tracked Facebook Live onboards within three months"
        "Created  A/B testing process within team to optimize Live adoptions from email campaigns and saw up to a 4% Live adoption rate within two weeks"
        "Ensured media integrity of celebrity and influencer profiles on Facebook and Instagram. Coordinated real-time solutions for high-priority clients and events including Olympic athletes, and 2016 elections activities and presidential debates"
      ]
    pley:
      company:            'PleyWorld'
      companyDescription: 'Crowdsourcing platform for LEGO designers that grew to launch four exclusive LEGO sets for Pley'
      link:               'https://www.pleyworld.com/'
      title:              'Project Manager'
      tools:              ''
      dates:              'February 2015 - August 2015'
      description: [
        "Owned ten growth, marketing, and product projects focused on growing traffic and engagement in the LEGO community"
        "Grew design submissions by 500%, successfully bringing four Pley-exclusive designs to market"
        "Increased user lifecycle by gathering direct feedback and applying it to product development"
        "Implemented strategic partnerships, including with a leading LEGO hobbyist website receiving over 1 million monthly visits"
        "Executed re-engagement email campaigns following Pley rebranding, with an increase in email open rates (from 19% to 30%) and conversion rates (from 0.8% to 2%)"
        "Managed first Salesforce Marketing cloud integration with Pley backend for key stakeholders to easily send emails"
      ]

    live365:
      company:            'Live365'
      companyDescription: 'Internet radio platform with over 5,000 stations and 1.6 million users'
      title:              'Project Manager'
      tools:              ''
      dates:              'February 2014 - February 2015'
      description: [
        "Lead UX improvement, e-mail, and knowledge-base projects for internet radio platform"
        "Successfully executed an email campaign that reduced premium listening churn by 3% monthly. (Premium listening product was responsible for 1⁄3 of the company revenue)"
        "Managed negotiation, product mock up, and redesign of Live365’s knowledge base with a Salesforce vendor, MondayCall"
        "Collaborated with design, business, and broadcast teams on marketing strategy, content development, testing, and analysis of end-to-end e-mail outreach program to 1.6m users; maintained a 30% open rate among core users"
      ]

    crowdera:
      company:            'Crowdera'
      companyDescription: 'Crowdfunding platform focused on the education of low-income individuals'
      link:               'https://www.crowdera.co/'
      title:              'Director of Business Development and Partnerships'
      tools:              ''
      dates:              'November 2013 - February 2015'
      description: [
        "Successfully established partnerships with ASSET Foundation, Bay Area Tutoring Association, and Visions Global Empowerment"
        "Developed internal quality assurance process to quickly screen nonprofit partners due to to high partnership inquiries"
        "Created and executed onboarding process for partners across India and the United States"
      ]

    grayMattersCapital:
      company:            'Gray Matters Capital'
      companyDescription: 'Impact investment firm with social enterprise investments in India'
      link:               'http://www.graymatterscap.com/'
      title:              'Fellow'
      dates:              'July 2012 - May 2013'
      description: [
        "Defined and executed five strategic growth projects for a low-cost private school for underserved students in India"
        "Designed and piloted vocational program for teens in ten schools in Hyderabad and Bangalore. Program now used in 30+ schools"
        "Collaborated with SAFA India (nonprofit) on initial framework and business plan to create a women’s income women entrepreneurs a place to earn seven times their weekly income"
      ]

    nonprofitConsultingPractica:
      company:            'Nonprofit Consulting Practica'
      companyDescription: 'Projects in housing, municipal government, and community building'
      title:              'Fellow'
      dates:              'July 2012 - May 2013'
      description: [
        "Results included a successful $5,000 grant for senior home weatherization, a $35,000 Community Development Block Grant, a strategic document on Baby Boomer housing planning for the city of Maryland Heights included in city archives, an RFP initiating a grant program from Maryland Heights Police Department, and a community garden stakeholders from city government, universities, and local citizens"
      ]

module.exports = Resume
