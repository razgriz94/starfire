z = require 'zorium'

if window?
  require './index.styl'

module.exports = class Privacy
  # coffeelint: disable=max_line_length
  render: ->
    z '.z-privacy',
      z 'h5', 'App Visitors'
      z 'p',
        '''
        Like most app operators, Starfire collects non-personally-identifying information of the sort that web browsers and servers typically make available,
        such as the browser type, language preference, referring site, and the date and time of each visitor request. Starfire's purpose in collecting
        non-personally identifying information is to better understand how Starfire's visitors use its app. From time to time, Starfire may release
        non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its app.
        '''
      z 'p',
        '''
        Starfire also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users of the Starfire API.
        Starfire only discloses logged in user IP addresses under the same circumstances that it uses and
        discloses personally-identifying information as described below.
        '''
      z 'h5', 'Gathering of Personally-Identifying Information'
      z 'p',
        '''
        Certain visitors to Starfire's apps choose to interact with Starfire in ways that require Starfire to gather personally-identifying information.
        The amount and type of information that Starfire gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a
        Starfire account to provide a username and email address. Those who engage in transactions with
        Starfire – by purchasing games or items in games, for example – are asked to provide additional information, including as
        necessary the personal and financial information required to process those transactions. In each case, Starfire collects such information only insofar
        as is necessary or appropriate to fulfill the purpose of the visitor's interaction with Starfire. Starfire does not disclose personally-identifying
        information other than as described below. And visitors can always refuse to supply personally-identifying information, with the caveat that it may prevent
        them from engaging in certain app-related activities.
        '''
      z 'h5', 'Aggregated Statistics'
      z 'p',
        '''
        Starfire may collect statistics about the behavior of visitors to its apps. Starfire may display this information publicly or provide it to others.
        However, Starfire does not disclose personally-identifying information other than as described below. '''
      z 'h5', 'Protection of Certain Personally-Identifying Information'
      z 'p',
        '''Starfire discloses potentially personally-identifying and personally-identifying information only to those of its employees, contractors and affiliated
        organizations that (i) need to know that information in order to process it on Starfire's behalf or to provide services available at Starfire's apps,
        and (ii) that have agreed not to disclose it to others. Some of those employees, contractors and affiliated organizations may be located outside of your
        home country; by using Starfire's apps, you consent to the transfer of such information to them. Starfire will not rent or sell potentially
        personally-identifying and personally-identifying information to anyone. Other than to its employees, contractors and affiliated organizations,
        as described above, Starfire discloses potentially personally-identifying and personally-identifying information only in response to a subpoena,
        court order or other governmental request, or when Starfire believes in good faith that disclosure is reasonably necessary to protect the property
        or rights of Starfire, third parties or the public at large. If you are a registered user of an Starfire app and have supplied your email address,
        Starfire may occasionally send you an email to tell you about new features, solicit your feedback, or just keep you up to date with what's going on with
        Starfire and our products. We primarily use blog to communicate this type of information, so we expect to keep this type of email
        to a minimum. If you send us a request (for example via a support email or via one of our feedback mechanisms), we reserve the right to publish it in order
        to help us clarify or respond to your request or to help us support other users. Starfire takes all measures reasonably necessary to protect against the
        unauthorized access, use, alteration or destruction of potentially personally-identifying and personally-identifying information.
        '''
      z 'h5', 'Cookies'
      z 'p',
        '''
        A cookie is a string of information that a app stores on a visitor's computer, and that the visitor's browser provides to the app each time the
        visitor returns. Starfire uses cookies to help Starfire identify and track visitors, their usage of Starfire app, and their app access preferences.
        Starfire visitors who do not wish to have cookies placed on their computers should set their browsers to refuse cookies before using Starfire's apps,
        with the drawback that certain features of Starfire's apps may not function properly without the aid of cookies.
        '''
      z 'h5', 'Business Transfers'
      z 'p',
        '''
        If Starfire, or substantially all of its assets were acquired, or in the unlikely event that Starfire goes out of business or enters bankruptcy,
        user information would be one of the assets that is transferred or acquired by a third party. You acknowledge that such transfers may occur, and that
        any acquirer of Starfire may continue to use your personal information as set forth in this policy.
        '''
      z 'h5', 'Ads'
      z 'p',
        '''
        Ads appearing on any of our apps may be delivered to users by advertising partners, who may set cookies. These cookies allow the ad server to
        recognize your computer each time they send you an online advertisement to compile information about you or others who use your computer.
        This information allows ad networks to, among other things, deliver targeted advertisements that they believe will be of most interest to you.
        This Privacy Policy covers the use of cookies by Starfire and does not cover the use of cookies by any advertisers.
        '''
      z 'h5', 'Privacy Policy Changes'
      z 'p',
        '''
        Although most changes are likely to be minor, Starfire may change its Privacy Policy from time to time, and in Starfire's sole discretion.
        Starfire encourages visitors to frequently check this page for any changes to its Privacy Policy. Your continued use of this site after any change in this Privacy Policy will constitute
        your acceptance of such change.
        '''
  # coffeelint: enable=max_line_length
