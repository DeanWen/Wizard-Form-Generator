<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <head> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> 
  <meta http-equiv="content-type" content="text/html;charset=utf-8" /> 
  <title>U.S. Consumer Privacy Notice</title> 
  <style> body {font-family: "Trebuchet MS", Helvetica, sans-serif } table {width: 100%; border-collapse: collapse; }
 table, td, th {border-top: 1px solid #80B2CC; border-bottom: 1px solid #80B2CC; } 
 th {background-color: #006699; color: white; padding: 5px; } td {padding: 5px 10px; } h3 {width: 100%; background-color: #006699; color: white; padding: 5px; } 
 .content-section {width: 70%; margin-left: 15%; padding-top: 10px; padding-bottom: 10px; } 
 .content-row {width: 100%; } .cpn-heading {width: 20%; padding: 5px; background-color: #006699; color: white; vertical-align: center; font-weight: bold; }
  .cpn-heading-white {width: 20%; padding: 5px; vertical-align: center; border-right: 1px solid #80B2CC; font-weight: bold; } 
  .cpn-details {width: 75%; padding: 5px 15px; } .cpn-header {width: 70%; color: #006699; text-align: center; margin-left: 15%; }
   .centered-td {text-align: center; border-left: 1px solid #80B2CC; } .bottom-border {border-bottom: 1px solid #80B2CC; } 
   .mailin-heading {width: 20%; padding: 5px; vertical-align: center; border-left: 1px solid #80B2CC; border-right: 1px solid #80B2CC; } .mailin-details {padding: 0px; width: 80%; border-right: 1px solid #80B2CC; } 
   .padding-5px {padding: 5px; } .mail-addr-heading {width: 25%; padding: 5px; background-color: #006699; color: white; vertical-align: center; font-weight: bold; } 
   .mail-addr-details {width: 50%; border-left: 1px solid #80B2CC; border-right: 1px solid #80B2CC; } .mail-addr-mailto {width: 25%; } </style> 
 </head> 
 <body> 
 <a onclick="this.href='data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML)" href="#" download="page.html">Download</a>
 <c:set var = "bean" value = "${bean}" />
  <div> 
   <h2 class="cpn-header">U.S. Consumer Privacy Notice</h2> 
   <div class="content-section"> 
    <div class="content-row">
     <p></p>
     <p style="text-align:right">Rev. ${bean.reviseDate}</p>
     <p></p>
    </div> 
   </div> 
   <div class="content-section"> 
    <div class="content-row"> 
     <table> 
      <tbody>
       <tr> 
        <td class="cpn-heading">FACTS</td> 
        <td class="cpn-details"><p>WHAT DOES ${bean.companyName} DO WITH YOUR PERSONAL INFORMATION?</p></td> 
       </tr> 
      </tbody>
     </table> 
    </div> 
    <div class="content-row"> 
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading">Why?</td>
        <td class="cpn-details"><p>Financial companies choose how they share your personal information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</p></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading">What?</td>
        <td class="cpn-details"><p>The types of personal information we collect and share depend on the product or service you have with us. This information can include:</p>
         <ul>
          <li>Social Security Number</li>
          <c:forEach var = "u" items = "${bean.personalInfoType}">
          <li>${u}</li>
          </c:forEach>
         </ul></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading">How?</td>
        <td class="cpn-details"><p>All financial companies need to share customers' personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers' personal information; the reasons ${bean.companyName} chooses to share; and whether you can limit this sharing.</p></td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <table>
      <thead>
       <tr>
        <th>Reasons we can share your personal information</th>
        <th>Does ${bean.companyName} share?</th>
        <th>Can you limit this sharing?</th>
       </tr>
      </thead>
      <tbody>
       <tr>
        <td><b>For our everyday business purpose - </b>such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
        <td class="centered-td">Yes</td>
        <td class="centered-td">No</td>
       </tr>
      </tbody>
      <tbody>
       <tr>
        <td><b>For our marketing purposes - </b>to offer our products and services to you</td>
        <td class="centered-td">${bean.question1}</td>
        <td class="centered-td">${bean.question1b}</td>
       </tr>
      </tbody>
      <tbody>
       <tr>
        <td><b>For joint marketing with other financial companies</b></td>
        <td class="centered-td">${bean.question2}</td>
        <td class="centered-td">${bean.question2b}</td>
       </tr>
      </tbody>
      <tbody>
       <tr>
        <td><b>For our affiliates' everyday business purposes - </b>information about your transactions and experiences</td>
        <td class="centered-td">${bean.question3}</td>
        <td class="centered-td">${bean.question3b}</td>
       </tr>
      </tbody>
      <tbody>
       <tr>
        <td><b>For our affiliates' everyday business purposes - </b>information about your creditworthiness</td>
        <td class="centered-td">${bean.question4}</td>
        <td class="centered-td">${bean.question4b}</td>
       </tr>
      </tbody>
      <c:choose>
      	<c:when test = "${bean.affiliatemarkettocus == 'no'}">
      	  <tbody>
	       <tr>
	        <td><b>For our affiliates to market to you</b></td>
	        <td class="centered-td">${bean.question5}</td>
	        <td class="centered-td">${bean.question5b}</td>
	       </tr>
	      </tbody>
	      </c:when>
      </c:choose>
      <tbody>
       <tr>
        <td><b>For nonaffiliates to market to you</b></td>
        <td class="centered-td">${bean.question6}</td>
        <td class="centered-td">${bean.question6b}</td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading">To limit our sharing</td>
        <td class="cpn-details">
         <ul>
         <c:choose>
         <c:when test = "${bean.optPhone != '-1'}">
         <li>Call ${bean.optPhone} - our menu will prompt you through your choice(s) or</li>
         </c:when>
          <c:when test = "${bean.optWebsite != '-1'}">
         <li>Visit us online: <a href = "${bean.optWebsite}"> ${bean.optWebsite} </a></li>
         </c:when>
         <c:when test = "${bean.city != '-1'}">
			<li>Mail the form below</li>
		</c:when>
 		<c:when test = "${bean.thirdPartyCookie != '-1'}">
			<li>Visit <a href="${bean.thirdPartyCookie}">${bean.thirdPartyCookie}</a> to opt-out by cookie</li>
		</c:when>
<%--  		<c:when test = "${bean.dntoptout != '-1'}">
			<li>Visit <a href="${bean.dntoptout}">${bean.dntoptout}</a> to opt-out by
				Do-Not-Track plugin
			</li>
		</c:when> --%>
		</c:choose>
         </ul>
         <p><b>Please note:</b></p><p>If you are a new customer, we can begin sharing your information ${bean.numOfDays} days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice.</p><p>However, you can contact us at any time to limit our sharing.</p></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading">Questions?</td>
        
        <td class="cpn-details">
        <c:choose>
        <c:when test = "${bean.phoneText != '-1'}">
        	Call ${bean.phoneText}
        	<c:choose>
        	<c:when test = "${bean.websiteText != '-1' && bean.websiteText != ''}">
        	or go to <a href = "${bean.websiteText}">${bean.websiteText} </a>
        	</c:when>
        	</c:choose>
        </c:when>
		<c:otherwise>
        	go to ${bean.websiteText}
        </c:otherwise>
        </c:choose>
        </td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <h3>Who we are</h3>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">Who is providing this notice?</td>
        <td class="cpn-details">
         <ul>
          <c:choose>
          <c:when test = "${bean.whoseNotice != '-1' }">
          <li>${bean.companyName}</li> <li>${bean.whoseNotice}</li>
          </c:when>
          <c:otherwise>
          <li>${bean.companyName}</li>
          </c:otherwise>
          </c:choose>
         </ul></td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <h3>What we do</h3>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">How does ${bean.companyName} protect my personal information?</td>
        <td class="cpn-details"><p>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings.</p><p>${bean.howProtect }</p></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">How does ${bean.companyName} collect my personal information?</td>
        <td class="cpn-details"><p>We collect your personal information, for example, when you</p>
         <ul>
          <c:forEach var = "u" items = "${bean.collect}">
          <li>${u}</li>
          </c:forEach>
         </ul>
         <c:choose>
         <c:when test ="${bean.collectaffiliate == 'no'}">
         	 <c:choose>
	         <c:when test ="${bean.isFromCompany == 'yes'}">
	         We also collect your personal information from other companies.
	         </c:when>
	         </c:choose>
         </c:when>
         <c:when test ="${bean.collectaffiliate == 'yes'}">
         We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.
         </c:when>
         </c:choose>
         </td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">Why can't I limit all sharing?</td>
        <td class="cpn-details"><p>Federal law gives you the right to limit only</p>
         <ul>
          <li>sharing for affiliates' everyday business purposes - information about your creditworthiness</li>
          <li>affiliates from using your information to market to you</li>
          <li>sharing for nonaffiliates to market to you</li>
         </ul>
             <c:choose>
	         <c:when test ="${bean.lawDetails != '-1'}">
	         See blow for more on your rights under state law.
	         </c:when>
	         </c:choose>
         
         </td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">What happens when I limit sharing for an account I hold jointly with someone else?</td>
        <td class="cpn-details">
             <c:choose>
	         <c:when test ="${bean.whatHappenWhenLimit == '1'}">
	         Your choices will apply to everyone on your account
	         </c:when>
	         <c:when test ="${bean.whatHappenWhenLimit == '2'}">
	         Your choices will apply to everyone on your account - unless you tell us otherwise
	         </c:when>
	         </c:choose>
        </td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <h3>Definitions</h3>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">Affiliates</td>
        <td class="cpn-details"><p>Companies related by common ownership or control. They can be financial and nonfinancial companies.</p>
         <ul>
             <c:choose>
             <c:when test="${bean.affiliate == '-1' && bean.noneaffiliate == '-1' && bean.others == '-1' }">
             <li>${bean.companyName} does not share with affiliates </li>
             </c:when>
	         <c:when test ="${bean.affiliate != '-1'}">
	         <li> Affiliate: ${bean.affiliate}</li>
	         </c:when>
	         <c:when test ="${bean.noneaffiliate != '-1'}">
	         <li> Non-affiliate: ${bean.noneaffiliate}</li>
	         </c:when>
	         <c:when test ="${bean.others != '-1'}">
	         <li> Others: ${bean.others}</li>
	         </c:when>
	         </c:choose>

         </ul></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">Nonaffiliates</td>
        <td class="cpn-details"><p>Companies not related by common ownership or control. They can be financial and nonfinancial companies.</p>
         <ul>
         
         <c:choose>
         	 <c:when test ="${bean.noneaffiliate != '-1'}">
	         <li>${bean.noneaffiliate}</li>
	         </c:when>
	         <c:otherwise>
	         <li>${bean.companyName} does not share with nonaffiliate so they can market to you </li>
	         </c:otherwise>
         </c:choose>
         
         </ul></td>
       </tr>
      </tbody>
     </table>
    </div>
    <div class="content-row">
     <table>
      <tbody>
       <tr>
        <td class="cpn-heading-white">Joint marketing</td>
        <td class="cpn-details"><p>A formal agreement between nonaffiliated financial companies that together market financial products or services to you.</p>
         <ul>
             <c:choose>
         	 <c:when test ="${bean.jointMarketing != '-1'}">
	         <li>${bean.jointMarketing}</li>
	         </c:when>
	         <c:otherwise>
	         <li>${bean.companyName} does not jointly market </li>
	         </c:otherwise>
         </c:choose>
         </ul></td>
       </tr>
      </tbody>
     </table>
    </div>
   </div>
   <div class="content-section">
    <div class="content-row">
     <h3>Other Important Information</h3>
    </div>
    <div class="content-row">
    <table><tr><td>${bean.stateLaw}</td></tr></table>
    	
    </div>
   </div>
   
   		<div class="content-section">
			<div class="content-row">
				<h3>Mail-in Form</h3>
				<table>
					<tr>
						<td class="mailin-heading"><p>If you have a joint
								account, your choice(s) will apply to everyone on your account
								unless you mark below</p>
							<p>[ ] Apply my choices only to me</p></td>
						<td class="mailin-details"><p class="padding-5px">Mark
								any/all you want to limit:</p>
							<p class="padding-5px">[ ] Do not share information about my
								creditworthiness with your affiliates for their everyday
								business purposes.</p>
							<p class="padding-5px">[ ] Do not allow your affiliates to
								use my personal information to market to me.</p>
							<p class="padding-5px">[ ] Do not share my personal
								information with nonaffiliates to market their products and
								services to me.</p>

							<table>
								<tr>
									<td class="mail-addr-heading">Name</td>
									<td class="mail-addr-details"></td>
									<td class="mail-addr-mailto" rowspan="5">
										<p>
											<strong>Mail To:</strong>
										</p>
										<p>
										 ${bean.companyName }<br /> ${ bean.address}<br />${bean.city } ${bean.state } ${bean.zipcode }
										</p>
									</td>
								</tr>
								<tr>
									<td class="mail-addr-heading" rowspan="3">Address</td>
									<td class="mail-addr-details">&nbsp;</td>
								</tr>
								<tr>
									<td class="mail-addr-details">&nbsp;</td>
								</tr>
								<tr>
									<td class="mail-addr-details">&nbsp;</td>
								</tr>
								<tr>
									<td class="mail-addr-heading">Opt-out Number</td>
									<td class="mail-addr-details"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
		</div>
  </div>  
 </body>
</html>