z = require 'zorium'

if window?
  require './index.styl'

module.exports = class Tos
  constructor: ({@router}) ->
    null

  # coffeelint: disable=max_line_length
  render: =>
    z '.z-tos',
      z 'p',
        '''
        The following terms and conditions govern all use of the Starfire app and all content, services and products available at or through the app. The app is owned and operated by Starfire.
        . The app is offered subject to your acceptance without modification of all of the terms and conditions contained herein and all other operating rules,
        policies (including, without limitation,
        '''
        @router?.link z 'a',
          href: '/privacy'
          'Starfire\'s Privacy Policy'
        '''
        ) and procedures that may be published from time to'
        time on this Site by Starfire (collectively, the "Agreement").
        '''
      z 'p',
        '''
        Please read this Agreement carefully before accessing or using the app. By accessing or using any part of the web site, you agree to become bound by the
        terms and conditions of this agreement. If you do not agree to all the terms and conditions of this agreement, then you may not access the app or use any services.
        If these terms and conditions are considered an offer by Starfire, acceptance is expressly limited to these terms. The app is available only to individuals who
        are at least 13 years old.
        '''
      z 'ol',
        z 'li',
          z 'div.is-bold', 'Your Starfire Account and Site.'
          '''
          If you create an account on the app, you are responsible for maintaining the accuracy and security of your account,
          and you are fully responsible for all activities that occur under the account and any other actions taken in connection with the account. Starfire will not
          be liable for any acts or omissions by You, including any damages of any kind incurred as a result of such acts or omissions.
          '''
        z 'li',
          z 'div.is-bold', 'Chat and Forums.'
          '''
          There is no tolerance for objectionable content or abusive users. Any user responsible for content that is unlawful, libelous, defamatory, obscene, pornographic, indecent, lewd, harassing, threatening, harmful, invasive of privacy or publicity rights, abusive, inflammatory or otherwise objectionable
          will be permantently banned.
          '''
        z 'li',
          z 'div.is-bold', 'Responsibility of app Visitors.'
          '''
          Starfire has not reviewed, and cannot review, all of the material, including computer software,
          posted to the app, and cannot therefore be responsible for that material's content, use or effects. By operating the app, Starfire does not
          represent or imply that it endorses the material there posted, or that it believes such material to be accurate, useful or non-harmful.
          or destructive content. The app may contain content that is offensive, indecent, or otherwise objectionable, as well as content containing
          technical inaccuracies, typographical mistakes, and other errors. The app may also contain material that violates the privacy or publicity rights,
          or infringes the intellectual property and other proprietary rights, of third parties, or the downloading, copying or use of which is subject to additional
          terms and conditions, stated or unstated. Starfire disclaims any responsibility for any harm resulting from the use by visitors of the app, or from
          any downloading by those visitors of content there posted.
          '''
        z 'li',
          z 'div.is-bold', 'Content Posted on Other apps.'
          '''
          We have not reviewed, and cannot review, all of the material, including computer software, made available
          through the apps and webpages to which Starfire links, and that link to Starfire. Starfire does not have any control over those external
          apps and webpages, and is not responsible for their contents or their use. By linking to a non-Starfire app or webpage, Starfire does not represent
          or imply that it endorses such app or webpage. You are responsible for taking precautions as necessary to protect yourself and your computer systems from
          viruses, worms, Trojan horses, and other harmful or destructive content. Starfire disclaims any responsibility for any harm resulting from your use of
          non-Starfire apps and webpages.
          '''
        z 'li',
          z 'div.is-bold', 'Copyright Infringement and DMCA Policy.'
          '''
          As Starfire asks others to respect its intellectual property rights, it respects the intellectual property rights
          of others. If you believe that material located on or linked to by Starfire violates your copyright, you are encouraged to notify Starfire in
          accordance with
          '''
          z 'a',
            href: 'https://github.com/claydotio/legal/blob/master/DMCA/Site%20Pages/DMCA%20Takedown%20Notice.md'
            'Starfire\'s Digital Millennium Copyright Act Policy'
          '''
          . Starfire will respond
          to all such notices, including as required or appropriate by removing the infringing material or disabling all links to the infringing material. Starfire     will terminate a visitor's access to and use of the app if, under appropriate circumstances, the visitor is determined to be a repeat infringer of
          the copyrights or other intellectual property rights of Starfire or others. In the case of such termination, Starfire will have no obligation to provide
          a refund of any amounts previously paid to Starfire.
          '''
        z 'li',
          z 'div.is-bold', 'Intellectual Property.'
          '''
          This Agreement does not transfer from Starfire to you any Starfire or third party intellectual property, and all
          right, title and interest in and to such property will remain (as between the parties) solely with Starfire. Starfire, the
          Starfire logo, and all other trademarks, service marks, graphics and logos used in connection with Starfire, or the app are trademarks or
          registered trademarks of Starfire or Starfire's licensors. Other trademarks, service marks, graphics and logos used in connection with the app
          may be the trademarks of other third parties. Your use of the app grants you no right or license to reproduce or otherwise use any Starfire or
          third-party trademarks.
          '''
        z 'li',
          z 'div.is-bold', 'Changes.'
          '''
          Starfire reserves the right, at its sole discretion, to modify or replace any part of this Agreement. It is your responsibility
          to check this Agreement periodically for changes. Your continued use of or access to the app following the posting of any changes to this Agreement
          constitutes acceptance of those changes. Starfire may also, in the future, offer new services and/or features through the app (including, the
          release of new tools and resources). Such new features and/or services shall be subject to the terms and conditions of this Agreement.
          '''
        z 'li',
          z 'div.is-bold', 'Termination.'
          '''
          Starfire may terminate your access to all or any part of the app at any time, with or without cause, with or without notice,
          effective immediately. If you wish to terminate this Agreement or your Starfire account (if you have one), you may simply discontinue using the
          app. All provisions of this Agreement which by their nature should survive termination
          shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnity and limitations of liability.
          '''
        z 'li.important',
          z 'div.is-bold', 'Disclaimer of Warranties.'
          '''
          The app is provided "as is". Starfire and its suppliers and licensors hereby disclaim
          all warranties of any kind, express or implied, including, without limitation, the warranties of merchantability, fitness for a particular purpose
          and non-infringement. Neither Starfire nor its suppliers and licensors, makes any warranty that the app will be error free or that access
          thereto will be continuous or uninterrupted.
          You understand that you download from, or otherwise obtain content or services through, the app at your own discretion and risk.
          '''
        z 'li.important',
          z 'div.is-bold', 'Limitation of Liability.'
          '''In no event will Starfire, or its suppliers or licensors, be liable with respect to any subject matter of
          this agreement under any contract, negligence, strict liability or other legal or equitable theory for: (i) any special, incidental or consequential damages;
          (ii) the cost of procurement for substitute products or services; (iii) for interruption of use or loss or corruption of data; or (iv) for any amounts that
          exceed the fees paid by you to Starfire under this agreement during the twelve (12) month period prior to the cause of action. Starfire shall have no
          liability for any failure or delay due to matters beyond their reasonable control. The foregoing shall not apply to the extent prohibited by applicable law.
          '''
        z 'li',
          z 'div.is-bold', 'General Representation and Warranty.'
          '''
          You represent and warrant that (i) your use of the app will be in strict accordance with the
          Starfire Privacy Policy, with this Agreement and with all applicable laws and regulations (including without limitation any local laws or regulations in
          your country, state, city, or other governmental area, regarding online conduct and acceptable content, and including all applicable laws regarding the
          transmission of technical data exported from the United States or the country in which you reside) and (ii) your use of the app will not infringe or
          misappropriate the intellectual property rights of any third party.
          '''
        z 'li',
          z 'div.is-bold', 'Indemnification.'
          '''
          You agree to indemnify and hold harmless Starfire, its contractors, and its licensors, and their respective directors,
          officers, employees and agents from and against any and all claims and expenses, including attorneys' fees, arising out of your use of the app,
          including but not limited to your violation of this Agreement.
          '''
        z 'li',
          z 'div.is-bold', 'Miscellaneous.'
          '''
          This Agreement constitutes the entire agreement between Starfire and you concerning the subject matter
          hereof, and they may only be modified by a written amendment signed by an authorized executive of Starfire, or by the posting by Starfire    of a revised version. Except to the extent applicable law, if any, provides otherwise, this Agreement, any access to or use of the app will
          be governed by the laws of the state of Texas, U.S.A., excluding its conflict of law provisions, and the proper venue for any disputes
          arising out of or relating to any of the same will be the state and federal courts located in Austin County, Texas. Except for
          claims for injunctive or equitable relief or claims regarding intellectual property rights (which may be brought in any competent court without
          the posting of a bond), any dispute arising under this Agreement shall be finally settled in accordance with the Comprehensive Arbitration Rules
          of the Judicial Arbitration and Mediation Service, Inc. ("JAMS") by three arbitrators appointed in accordance with such Rules. The arbitration
          shall take place in Austin, Texas, in the English language and the arbitral decision may be enforced in any court. The prevailing
          party in any action or proceeding to enforce this Agreement shall be entitled to costs and attorneys' fees. If any part of this Agreement is held
          invalid or unenforceable, that part will be construed to reflect the parties' original intent, and the remaining portions will remain in full
          force and effect. A waiver by either party of any term or condition of this Agreement or any breach thereof, in any one instance, will not waive
          such term or condition or any subsequent breach thereof. You may assign your rights under this Agreement to any party that consents to, and agrees
          to be bound by, its terms and conditions; Starfire may assign its rights under this Agreement without condition. This Agreement will be binding
          upon and will inure to the benefit of the parties, their successors and permitted assigns.
          '''
  # coffeelint: enable=max_line_length
