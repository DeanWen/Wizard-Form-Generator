<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="top.jsp" />

<script>
	function validateForm() {
		
		if(document.getElementById('companyName').value==''){
			document.getElementById('error-company').style.display = "block";
			return false;
		}else{
			document.getElementById('error-company').style.display = "none";
		}
		
		if(document.getElementById('reviseDate').value==''){
			document.getElementById('error-Date').style.display = "block";
			return false;
		}
		else{
			document.getElementById('error-Date').style.display = "none";
		}

		var sum1 = 0;
		var checkboxes = document.getElementsByName('personalInfoType');
		for (var i = 0; i < checkboxes.length; i++) {
			if (checkboxes[i].checked) {
				sum1++;
			}
		}
		
		if(sum1!=6)
		{
			document.getElementById("error-info-checkboxes").style.display = "block";
			return false;
		}else
		{
			document.getElementById("error-info-checkboxes").style.display = "none";
		}
		
		var sum3 = 0;
		var checkboxes3 = document.getElementsByName('affiliatemarkettocus');
		for (var i = 0; i < checkboxes3.length; i++) {
			if (checkboxes3[i].checked) {
				sum3++;
			}
		}
		if(sum3<1)
		{
			document.getElementById("error-affiliatemarkettocus").style.display = "block";
			return false;
		}else
		{
			document.getElementById("error-affiliatemarkettocus").style.display = "none";
		}
		
		
		
		
		var sum4 = 0;
		var checkboxes21 = document.getElementsByName('isoptout');
		for (var i = 0; i < checkboxes21.length; i++) {
			if (checkboxes21[i].checked) {
				sum4++;
			}
		}
		if(sum4<1)
		{
			document.getElementById("error-opt-outSuper").style.display = "block";
			return false;		
		}else
		{
			document.getElementById("error-opt-outSuper").style.display = "none";	
		}
		
		if(document.getElementById("optmethod").style.display == "block")
		{
			var checkboxes2 = document.getElementsByName('opt_out');
			var sum2 = 0;
			for (var i = 0; i < checkboxes2.length; i++) {
				
				if (checkboxes2[i].checked) {
					sum2++;
				}
			}
		
			
			if(sum2<1)
			{
				document.getElementById("error-opt-out").style.display = "block";
				return false;		
			}
			else
			{
				document.getElementById("error-opt-out").style.display = "none";
			}
		}
		
	
		
		
		if(document.getElementById("phoneArea").style.display == "block")	
		{
			if(document.getElementById("phonephone").value=='')
			{
				document.getElementById("errorPhone").style.display = "block";
				return false;	
			}
			else
			{
				document.getElementById("errorPhone").style.display = "none";
			}
		}
		
		
		if(document.getElementById("websiteArea").style.display == "block")	
		{
			if(document.getElementById("websitewebsite").value=='')
			{
				document.getElementById("errorWebsite").style.display = "block";
				return false;	
			}
			else
			{
				document.getElementById("errorWebsite").style.display = "none";
			}
		}
		
		if(document.getElementById("mailArea").style.display == "block")	
		{
			
			if(document.getElementById("city").value=='' || document.getElementById("Address").value=='' || document.getElementById("zipcode").value=='' )
			{
				document.getElementById("errorMail").style.display = "block";
				return false;	
			}
			else
			{
				document.getElementById("errorMail").style.display = "none";
			}
		}
		
		
		/////////////////////////////////////////////////////////////
		
		
		if(document.getElementById("begindate").style.display == "block")	
		{
			
			if(document.getElementById("numberOfDays").value=='')
			{
				document.getElementById("error-begindate").style.display = "block";
				return false;	
			}
			else
			{
				document.getElementById("error-begindate").style.display = "none";
			}
			
			if(document.getElementById("numberOfDays").value<30)
			{
				document.getElementById("error-begindate").style.display = "block";
				return false;
			}
			else
			{
				document.getElementById("error-begindate").style.display = "none";	
			}
		}
		
		
		
		
		
		
		
		
		
		var sum9 = 0;
		var checkboxes9 =  document.getElementsByName ('contactMethod');
		for (var i = 0; i < checkboxes9.length; i++) {
			if (checkboxes9[i].checked) {
				sum9++;
			}
		}
		if(sum9<1)
		{
			document.getElementById("error-opt-contactMethod").style.display = "block";
			return false;		
		}else
		{
			document.getElementById("error-opt-contactMethod").style.display = "none";	
		}
		
		
		
		var checkboxes10 = document.getElementsByName('twoOrMoreInstitute');
		var sum10 = 0;
		for (var i = 0; i < checkboxes10.length; i++) {
			if (checkboxes10[i].checked) {
				sum10++;
			}
		}
		
		if(sum10<1)
		{
			document.getElementById("error-opt-10").style.display = "block";
			return false;		
		}else
		{
			document.getElementById("error-opt-10").style.display = "none";	
		}
		
		var checkboxes12 = document.getElementsByName('collect');
		var sum12 = 0;
		for (var i = 0; i < checkboxes12.length; i++) {
			if (checkboxes12[i].checked) {
				sum12++;
			}
		}
		if(sum12!=5)
		{
			document.getElementById("error-opt-12").style.display = "block";
			return false;
		}
		else
		{
			document.getElementById("error-opt-12").style.display = "none";
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
	}
	
	
	
	
	
	
</script>

<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<li class="active"><a href="index.do">Build</a></li>
				<li><a href="import.do">Import</a></li>
			</ul>
			<h3 class="text-muted">Interactive Form Builder</h3>
		</div>
		
		<div class="content">

			<form role="form" method="post" onsubmit="return validateForm()">
				<div class="form-group">
					<label for="companyName">1. Enter the name of your financial institution: *</label> 
					    <input type="text" class="form-control" name="companyName" id="companyName" />
						<div id="error-company" style="display: none" >
							<h5 style="color: red;">Please fill in your company's name</h5>
						</div>
				</div>
				
				<div class="form-group">
					<label for="reviseDate">2. Enter last revised date (mm/yyyy): *</label> 
					    <input type="text" class="form-control" name="reviseDate" id="reviseDate" placeholder="Example: 05/2015" />
						<div id="error-Date" style="display: none" >
							<h5 style="color: red;">Please fill in the revised date</h5>
						</div>
				</div>
							
				
				<div class="form-group">
					<label for="companyName">3. What types of personal information you collect and share? * (Choose exactly 5 options)</label>
						<div id="error-info-checkboxes" style="display: none">
							<h5 style="color: red;">You need to select 6 options including SSN so only need to select 5 in total besides SSN</h5>
						</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType" value="social security number" checked
							disabled> social security number
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType" value="income">
							income
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType"
							value="account balances"> account balances
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType"
							value="payment history"> payment history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType"
							value="transaction history"> transaction history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" name="personalInfoType" value="transaction or loss history">
							transaction or loss history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit history"
							name="personalInfoType"> credit history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit scores"
							name="personalInfoType"> credit scores
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="assets" name="personalInfoType">
							assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="investment experience"
							name="personalInfoType"> investment experience
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value="credit-based insurance scores"
							name="personalInfoType"> credit-based
							insurance scores
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value="insurance claim history"
							name="personalInfoType"> insurance claim history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="medical information"
							name="personalInfoType"> medical information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="overdraft history"
							name="personalInfoType"> overdraft history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="purchase history"
							name="personalInfoType"> purchase history
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="account transactions"
							name="personalInfoType"> account transactions
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="risk tolerance"
							name="personalInfoType"> risk tolerance
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="medical-related debts"
							name="personalInfoType"> medical-related debts
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="credit card or other debt"
							name="personalInfoType"> credit card or other debt
						</label>
					</div>

					<div class="checkbox">
						<label> <input type="checkbox" value="mortgage rates and payments"
							name="personalInfoType"> mortgage rates and payments
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="retirement assets"
							name="personalInfoType"> retirement assets
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="checking account information"
							name="personalInfoType"> checking account information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="employment information"
							name="personalInfoType"> employment information
						</label>
					</div>
					<div class="checkbox">
						<label> <input type="checkbox" value="wire transfer instructions"
							name="personalInfoType"> wire transfer instructions
						</label>
					</div>
			</div>
					
					<div class="form-group">	
						<label for="">4. Please select "Yes" if any of the following statement is true: *</label>
						<div id="error-affiliatemarkettocus" style="display: none" >
				    		<h5 style="color: red;">You must select Yes or No.</h5>
			    		</div>
						<ul>
				            <li>Your organization does not have affiliates (or doesn't disclose personal information to its affiliates)</li>
				            <li>Your affiliates(if you have any) do not use personal information in a manner that requires an opt-out</li>
				            <li>Your organization provides the affiliate marketing notice separately.</li>
			            </ul>
						<div class="radio">
							<label> <input type="radio" name="affiliatemarkettocus" id="affiliatemarkettocus" value="yes" onclick="disapearQ5intable(this)"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="affiliatemarkettocus" id="affiliatemarkettocus" value="no" onclick="showQ5intable(this)"> No
							</label>
						</div>
					</div>
<script>
function showQ5intable(ch) {
	if (ch.checked) {
		
		document.getElementById("Q5").style.display = "table-row";
		
	} else {
		document.getElementById("Q5").style.display = "none";
	}
}
function disapearQ5intable(ch) {
	if (ch.checked) {
		document.getElementById("Q5").style.display = "none";
	} else {
		document.getElementById("Q5").style.display = "block";
	}
}
    function showMethod(ch) {
	if (ch.checked) {
		document.getElementById("optmethod").style.display = "block";
		document.getElementById("applyscope").style.display = "block";
		document.getElementById("begindate").style.display = "block";
	} else {
		document.getElementById("optmethod").style.display = "none";
		document.getElementById("applyscope").style.display = "none";
		document.getElementById("begindate").style.display = "none";
	}
}
    function disappearMethod(ch) {
    	if (ch.checked) {
    		document.getElementById("optmethod").style.display = "none";
    		document.getElementById("applyscope").style.display = "none";
    		document.getElementById("begindate").style.display = "none";
    	} else {
    		document.getElementById("optmethod").style.display = "block";
    		document.getElementById("applyscope").style.display = "block";
    		document.getElementById("begindate").style.display = "block";
    	}
    }
	function showPhone(ch) {
		if (ch.checked) {
			document.getElementById("phoneArea").style.display = "block";
			document.getElementById("begindate").style.display = "block";

		} else {
			document.getElementById("phoneArea").style.display = "none";
			document.getElementById("begindate").style.display = "none";

		}
	}
	function showWebsite(ch) {
		if (ch.checked) {
			document.getElementById("websiteArea").style.display = "block";
			
		} else {
			document.getElementById("websiteArea").style.display = "none";
			
		}
	}
	function showMail(ch) {
		if (ch.checked) {
			document.getElementById("mailArea").style.display = "block";
			
		} else {
			document.getElementById("mailArea").style.display = "none";
			
		}
	}
	function show3Party(ch) {
		if (ch.checked) {
			document.getElementById("thirdPartyArea").style.display = "block";
			
		} else {
			document.getElementById("thirdPartyArea").style.display = "none";
			
		}
	}
	function showDNTPlugin(ch) {
		if (ch.checked) {
			document.getElementById("dntplugin").style.display = "block";
			
		} else {
			document.getElementById("dntplugin").style.display = "none";
			
		}
	}
</script>
					<div class="form-group">
					<label for="reviseDate">5. Does your organization provide opt-out service? *</label> 
					<div id="error-opt-outSuper" style="display: none" >
				    	<h5 style="color: red;">You must select Yes or No.</h5>
			    	</div>
						<div class="radio">
							<label> <input type="radio" name="isoptout" id="isoptout" value="yes" onclick="showMethod(this)"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="isoptout" id="isoptout" value="no" onclick="disappearMethod(this)"> No
							</label>
						</div>
						<div id="error-Date" style="display: none" >
							<h5 style="color: red;">You must choose one</h5>
						</div>
				</div>
				
				<div class="form-group" id="optmethod" style="display: none">
					    <label for="opt-out">6. What opt-out methods will you offer? (At least one) *</label>
				
				<div id="error-opt-out" style="display: none" >
				    <h5 style="color: red;">You must select at least one opt-out method.</h5>
			    </div>
						<table style="width: 100%">
				            <tr>
					        <td width="15%"><input type="checkbox" name="opt_out" value="1" onclick="showPhone(this)"> Phone</td>
					        <td width="15%"><input type="checkbox" name="opt_out" value="2" onclick="showWebsite(this)"> Website</td>
					        <td width="15%"><input type="checkbox" name="opt_out" value="3" onclick="showMail(this)"> Mail-in</td>
				            <td width="15%"><input type="checkbox" name="opt_out" value="2" onclick="show3Party(this)"> Third Party Cookie Optout</td>
				            <td width="15%"><input type="checkbox" name="opt_out" value="2" onclick="showDNTPlugin(this)"> Do-Not-Track Plugin</td>
				            
				            </tr>
			           </table>
				</div>				
			<br>
	
			<div class="content-row">
				<label>7. Please select Yes/No or we do not share depending if the reason on the left column to share personal information is valid to
					your organization.*</label>
				<table border="0" class="table table-striped"
					style="text-align: left"
					summary="This 3-column table provides information about the reasons why Bank of America can share your personal information.">
					<thead>
						<tr>
							<th scope="col">Information</th>
							<th scope="col">Does your company share?</th>
							<th scope="col">Can you limit this sharing?</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Does your organization share information for everyday business purposes? </strong>
							&mdash; Such as to
								process transactions, maintain customers account(s), respond to
								court orders and legal investigations, or report to credit
								bureaus</td>
							<td class="centered-td">Yes<br /> (Mandatory)
							</td>
							<td class="centered-td">No<br /> (Mandatory)
							</td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information for marketing purposes </strong>&mdash; to such as to offer
								products and services to customers?</td>
							<td class="centered-td"><select name="question1"
								id="question1" onchange="changeQ1()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question1b"
								id="question1b" readonly="false">
								     <option value="Yes" id="share1" >Yes</option>
									<option value="No" id="no1">No</option>
									<option value="No" id="noShare1">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong> Does your organization share
									information to do joint marketing with other financial
									companies?</strong></td>
							<td class="centered-td"><select name="question2"
								id="question2" onchange="changeQ2()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question2b"
								id="question2b" readonly="false"><option value="Yes"
										id="share2">Yes</option>
									<option value="No" id="no2">No</option>
									<option value="No" id="noShare2">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information with affiliates&rsquo; for everyday business
									purposes? </strong>&mdash; Information about transactions and
								experiences from customers</td>
							<td class="centered-td"><select name="question3"
								id="question3" onchange="changeQ3()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select name="question3b"
								id="question3b" readonly="false"><option value="Yes"
										id="share3">Yes</option>
									<option value="No" id="no3">No</option>
									<option value="No" id="noShare3">We do not share</option></select></td>
						</tr>
						<tr>
							<td><strong>Does your organization share
									information for affiliates&rsquo; &rsquo;everyday business purposes? </strong>&mdash;
								Information such as creditworthiness</td>
							<td class="centered-td"><select id="question4"
								name="question4" onchange="changeQ4()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select id="question4b"
								name="question4b" readonly="false"><option value="Yes"
										id="share4">Yes</option>

									<option value="No" id="noShare4">We do not share</option></select></td>
						</tr>
												

						<tr>
							<td><strong>For nonaffiliates to market to you</strong></td>
							<td class="centered-td"><select id="question6"
								name="question6" onchange="changeQ6()"><option
										value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select id="question6b"
								name="question6b" readonly="false"><option value="Yes"
										id="share6">Yes</option>
									<option value="No" id="noShare6">We do not share</option></select></td>
						</tr>
						
						<tr id="Q5" style="display: none;border-right: #ccc 1px solid">
							<td><strong>Does your organization share
									information to affiliates for them marketing to your customers</strong>&mdash;
							</td>
							<td class="centered-td">
							    <select id="question5" name="question5" onchange="changeQ5()">
							        <option value="Yes">Yes</option>
									<option value="No">No</option></select></td>
							<td class="centered-td"><select id="question5b" name="question5b" readonly="false"><option value="Yes"
										id="share5">Yes</option>

									<option value="No" id="noShare5">We do not share</option></select></td>
									
						</tr>
					</tbody>
				</table>
			</div>
			
			<script type="text/javascript">
		changeQ1();
		changeQ2();
		changeQ3();
		changeQ4();
		changeQ5();
		changeQ6();
		mailinFormShow();
	</script>
	
	<script type="text/javascript">
	
	function changeQ1() {
		var myselect = document.getElementById("question1").value;

		if (myselect == "No") {
			document.getElementById("noShare1").selected = "true";
			document.getElementById("noShare1").disabled = false;
			document.getElementById("no1").disabled = "true";

			document.getElementById("share1").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
		} else {
			document.getElementById("share1").disabled = false;
			document.getElementById("share1").selected = "true";
			document.getElementById("noShare1").disabled = "true";
			document.getElementById("no1").disabled = false;

		}
	}
	function changeQ2() {                                                
		var myselect = document.getElementById("question2").value;

		if (myselect == "No") {
			document.getElementById("noShare2").selected = "true";
			document.getElementById("noShare2").disabled = false;
			document.getElementById("no2").disabled = "true";

			document.getElementById("share2").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
			document.getElementById("jointMarketing").style.display = "none";
		} else {
			document.getElementById("share2").disabled = false;
			document.getElementById("share2").selected = "true";
			document.getElementById("noShare2").disabled = "true";
			document.getElementById("no2").disabled = false;
			document.getElementById("jointMarketing").style.display = "block";
		}
	}
	function changeQ3() {     
		var myselect = document.getElementById("question3").value;
		var ans4 = document.getElementById("question4").value;
		var ans5 = document.getElementById("question5").value;
		

		if (myselect == "No") {
			document.getElementById("noShare3").selected = "true";
			document.getElementById("noShare3").disabled = false;
			document.getElementById("no3").disabled = "true";

			document.getElementById("share3").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
			
		} else{
			document.getElementById("share3").disabled = false;
			document.getElementById("share3").selected = "true";
			document.getElementById("noShare3").disabled = "true";
			document.getElementById("no3").disabled = false;

		} 
		if (myselect == "No" && ans4 == "No" && ans5 == "No" ) { 
			alert(ans4+ ans5 + myselect +"haha" );
			
			document.getElementById("affiliateProgram").style.display = "none";
		}
	}
	function changeQ4() {
		var myselect = document.getElementById("question4").value;
		var ans3 = document.getElementById("question3").value;
		var ans5 = document.getElementById("question5").value;

		if (myselect == "No") {
			document.getElementById("noShare4").selected = "true";
			document.getElementById("noShare4").disabled = false;
			//document.getElementById("no4").disabled = "true";

			document.getElementById("share4").disabled = "true";
			//document.getElementById("question1b").disabled = "true";
			document.getElementById("affiliateProgram").style.display = "block";
		} else {
			document.getElementById("share4").disabled = false;
			document.getElementById("share4").selected = "true";
			document.getElementById("noShare4").disabled = "true";
			//document.getElementById("no4").disabled = false;

		}
		if (myselect == "No" && ans3 == "No" && ans5 == "No") { 
			//alert(ans3+ ans5 + myselect +"haha" );
			document.getElementById("affiliateProgram").style.display = "none";
		}
	}
	function changeQ5() {
		var myselect = document.getElementById("question5").value;
		var ans3 = document.getElementById("question3").value;
		var ans4 = document.getElementById("question4").value;
		
		if (myselect == "No") {
			document.getElementById("noShare5").selected = "true";
			document.getElementById("noShare5").disabled = false;
			document.getElementById("share5").disabled = "true";
			//document.getElementById("question5b").disabled = "true";
			document.getElementById("affiliateProgram").style.display = "block";
		} else {
			document.getElementById("share5").disabled = false;
			document.getElementById("share5").selected = "true";
			document.getElementById("noShare5").disabled = "true";
			//	document.getElementById("no5").disabled = false;

		} 
		if (myselect == "No" && ans4 == "No" && ans3 == "No") { 
			//alert(ans4+ ans3 + myselect +"haha" );
			document.getElementById("affiliateProgram").style.display = "none";
		}
	}
	function changeQ6() {
		var myselect = document.getElementById("question6").value;
		if (myselect == "No") {
			document.getElementById("noShare6").selected = "true";
			document.getElementById("noShare6").disabled = false;
			document.getElementById("share6").disabled = "true";
			//document.getElementById("question6b").disabled = "true";
			document.getElementById("noneAffiliateProgram").style.display = "none";
		} else {
			document.getElementById("share6").disabled = false;
			document.getElementById("share6").selected = "true";
			document.getElementById("noShare6").disabled = "true";
			//document.getElementById("no6").disabled = false;
			document.getElementById("noneAffiliateProgram").style.display = "block";
		}
	}
</script>
		<div class="content-row" id="phoneArea" style="display: none">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td ><h4>Phone Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your phone number for opt-out? *</h4>
				<div id="errorPhone" style="display: none">
					<h5 style="color: red;">You must fill in the phone number for opt-out</h5>
				</div>
				<input type="text" class="form-control" placeholder="Phone number for opt-out" id="phonephone" name="optPhone">
			</div>
		</div>
		<br />
		

		<div class="content-row" id="websiteArea" style="display: none">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td ><h4>Website Opt-out</h4></td>
					</tr>
				</table>
				<h4>What's your website for opt-out? *</h4>
				
				
				<div id="errorWebsite" style="display: none">
					<h5 style="color: red;">You must fill in the website for opt-out</h5>
				</div>
				<input type="text" class="form-control" placeholder="Website for opt-out" id="optWebsite" name="optWebsite">
			</div>
			<br />
		</div>
		<br />
		
		
		<div class="content-row" id="mailArea" style="display: none">
			<div class="content-row" id="mailinForm">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td ><h4>Mail-in Opt-out</h4></td>
					</tr>
				</table>
				
				<div id="optionalInfo" class="leftpad" style="display: none">
					<h5>Please select the additional information you need:</h5>
					<input type="radio" name="optionsRadios" id="radio1" value="Account Number" checked> Account Number<br /> 
					<input type="radio" name="optionsRadios" id="radio1" value="Opt-out Number"> Opt-out Number<br /> 
					<input type="radio" name="optionsRadios" id="radio1" value="Truncated Account Number"> Truncated Account Number<br />
				</div>
				<br />
				<h4>The mail-in opt-out form should be mailed to: *</h4>
				<div id="errorMail" style="display: none">
					<h5 style="color: red;">Please fill in all the information</h5>
				</div>
				<table style="width: 100%">
					<tr>
						<td>City:</td>
						<td>&nbsp;&nbsp;<input name="city" type="text" id="city"></td>
						<td>Street:</td>
						<td>&nbsp;&nbsp;<input name="address" type="text" id="Address"></td>
						
					</tr>
					<tr>
						<td>State:</td>
						<td>&nbsp;&nbsp; <select name="state">
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
						</select>
						</td>
						<td>Zip:</td>
						<td>&nbsp;&nbsp;<input type="text" name="zipcode" id="zipcode"></td>
					</tr>
				</table>
			</div>
		</div>
		<br>

        <div class="content-row" id="thirdPartyArea" style="display: none">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td ><h4>Third Party Cookie Optout</h4></td>
					</tr>
				</table>
				<h4>What's the link for "third party cookie opt-out"? *</h4>
				
				
				<div id="error3party" style="display: none">
					<h5 style="color: red;">You must fill in the the link for opt-out</h5>
				</div>
				<input type="text" class="form-control" placeholder="Link for opt-out" id="thirdPartyCookie" name="thirdPartyCookie">
			</div>
			<br />
		</div>
		<br />
		
		<div class="content-row" id="dntplugin" style="display: none">
			<div class="content-row">
				<table class="table table-striped" style="text-align: left">
					<tr>
						<td ><h4>Do-Not-Track Plugin</h4></td>
					</tr>
				</table>
				<h4>What's the link for "DNT Plugin"? *</h4>
				
				
				<div id="errordnt" style="display: none">
					<h5 style="color: red;">You must fill in the the link for opt-out</h5>
				</div>
				<input type="text" class="form-control" placeholder="Link for opt-out" id="dntoptout" name="dntoptout">
			</div>
			<br />
		</div>
		<br />
		
		<div class="content-row" id="begindate" style="display: none">
			<label>8. How many days can you begin sharing new customer's
				information from the date you sent the notice to the customer? *</label>
			<br />
			<div id="error-begindate" style="display: none" >
				    	<h5 style="color: red;">Please fill in the days that is no less than 30</h5>
			</div>
			<input type="text" class="form-control" id="numberOfDays"
				placeholder="No less than 30 days" name="numOfDays">
		</div>


		<div class="form-group" >
			<label for="servicecontact">9. What customer service contact information will you provide (select at least one method)? *</label>
					<div id="error-opt-contactMethod" style="display: none" >
				    	<h5 style="color: red;">You must select at least one contact method</h5>
			    	</div>
				<table style="width: 100%" >
				<tr>
					<td width="15%">
					    <input name="contactMethod" id="phone1" type="checkbox" value="phone" /> Phone</td>
					    
					<td>
					<input type="text" class="form-control" placeholder="Phone Number" id = "phoneText" name="phoneText"></td>
				</tr>
				<tr>
					<td width="15%">
					    <input name="contactMethod" type="checkbox" id="website1" value="website" /> Website</td>
					    
					<td>
					    <input type="text" class="form-control" placeholder="Website Address" id = "websiteText" name="websiteText"></td>
				</tr>
			    </table>
		</div>
					
						<div class="form-group">
							<label for="twoOrMoreInstitute">10. Please list the financial institutions that <strong>jointly</strong> provide this privacy policy. 
							</label>
							<textarea class="form-control"" rows="3" name="whoseNotice" 
							placeholder="You can ommit this area if you are the only institution providing this notice; otherwise, jointly parties should be identified clearly." ></textarea>
							
						</div>
					
						<div class="form-group">
							<label for="howProtect">11. How do you protect user's personal information? *</label>
							<div id="error-opt-11" style="display: none" >
				    			<h5 style="color: red;">Please type in your ways of protecting user's personal information</h5>
			    			</div>
							<textarea class="form-control" rows="3" name="howProtect" 
							 placeholder="The safeguards practices may include information about the institution’s use of cookies or other measures it uses to 206 safeguard personal information. No more than 30 additional words" ></textarea>
						</div>
						<div class="form-group">
							<label for="collect">12. How do you collect user's personal information? *(Choose exactly 5 options)</label>
							<div id="error-opt-12" style="display: none" >
				    			<h5 style="color: red;">You must choose only 5 options</h5>
			    			</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Open an account"> Open an account
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Deposit money"> Deposit money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Pay your bills"> Pay your bills
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Apply for a loan"> Apply for a loan
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Use your credit or debit card"> Use your credit or debit card
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Seek Financial or Tax Advice"> Seek Financial or Tax Advice
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Apply for insurance"> Apply for insurance
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Pay Insurance premiums"> Pay Insurance premiums
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="File an insurance claim"> File an insurance claim
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" vname="collect" alue="Seek advice about your investments"> Seek advice about your investments
								</label>
							</div>

							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Buy securities from us"> Buy securities from us
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Sell securities to us or direct us to buy/sell securities"> Sell securities to us or direct us to buy/sell securities
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Direct us to buy securities"> Direct us to buy securities
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Direct us to sell your securities"> Direct us to sell your securities
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Make deposits or withdrawals from your account"> Make deposits or withdrawals from your account
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Enter into an investment advisory contract"> Enter into an investment advisory contract
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Give us your income information"> Give us your income information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Provide employment information"> Provide employment information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Give us your employment history"> Give us your employment history
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Tell us about your investment or retirement portfolio"> Tell us about your investment or retirement portfolio
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Tell us about your investment or retirement earnings"> Tell us about your investment or retirement earnings
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Apply for financing"> Apply for financing
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Apply for lease"> Apply for lease
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Provide account information"> Provide account information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Give us your contact information"> Give us your contact information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Pay us by check"> Pay us by check
								</label>
							</div>

							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Give us your wage statements"> Give us your wage statements
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Provide your mortgage information"> Provide your mortgage information
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Make a wire transfer"> Make a wire transfer
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Make a wire transfer"> Tell us who receives the money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Tell us where to send the money"> Tell us where to send the money
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Show us your government issued ID"> Show us your government issued ID
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Show your driver's license"> Show your driver's license
								</label>
							</div>
							<div class="checkbox">
								<label> <input type="checkbox" name="collect" value="Order commodity futures or option trade"> Order commodity futures or option trade
								</label>
							</div>
							
						
                               <div class="form-group">
								<label for="collectaffiliate">13. Do you collect information from affiliates and/or credit bureaus? *</label>
								
								<div id="error-opt-12" style="display: none" >
				    				<h5 style="color: red;">You mush choose one option.</h5>
			    				</div>	
								<div class="radio">
									<label> <input type="radio" name="collectaffiliate" id="collectaffiliate" value="yes"> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="collectaffiliate" id="collectaffiliate" value="no"> No
									</label>
								</div>
							</div>
                           
                           <script>
								$("input[name='collectaffiliate']")
										.change(
												function() {

													if ($(this).val() == "yes") {
														$(
																"#isFromCompany")
																.hide();
													} else {
														$(
																"#isFromCompany")
																.show();
													}

												});
							</script>
							<div class="form-group" style="display: none" id="isFromCompany">
								<label for="isFromAff">14. Do you collect information from other companies? </label>
								<div class="radio">
									<label> <input type="radio" name="isFromCompany" id="isFromCompany" value="yes"> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="isFromCompany" id="isFromCompany" value="no"> No
									</label>
								</div>
							</div>
							
							<div class="form-group">
								<label for="isPresentLaw">15. Would you like to refer to state privacy law provisions? 
								    (If choose yes, you should provide law details) *</label>
								<div class="radio">
									<label>
									     <input type="radio" name="isPresentLaw" id="isPresentLaw" value="yes" onclick="showLawArea(this)"> Yes
									</label>
								</div>
								<div class="radio">
									<label> 
									    <input type="radio" name="isPresentLaw" id="isPresentLaw" value="no" onclick="disappearLawArea(this)"> No
									</label>
								</div>
								
<script>
function showLawArea(ch) {
	if (ch.checked) {
		document.getElementById("lawarea").style.display = "block";
	} else {
		document.getElementById("lawarea").style.display = "none";
	}
}
function disappearLawArea(ch) {
	if (ch.checked) {
		document.getElementById("lawarea").style.display = "none";
	} else {
		document.getElementById("lawarea").style.display = "block";
	}
}
</script>
								<div class="content-row" id="lawarea" style="display: none">
								<label for="isPresentLaw">Please provide law details here:</label>
								<div class="radio">
									<label>
					                    <textarea class="form-control"" rows="3" name="lawDetails"></textarea>
									</label>
								</div>
								
							</div>


							<div class="form-group" id="applyscope" style="display: none">
								<label for="why">16. What happens when users limit sharing for an account that is jointly held with someone else?</label>
								<div class="radio">
									<label> <input type="radio" name="whatHappenWhenLimit"
										value="Yourchoices apply to everyone on the account" checked> Your choices apply to everyone on the account
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="whatHappenWhenLimit"
										 value="Your choices will apply to everyone on the account - unless you tell us otherwise"> Your choices will apply to everyone on the account - unless you tell us otherwise
									</label>
								</div>
							</div>

					<div class="form-group" id="affiliateProgram" style="display: block">
					<label for="">17. Please list your affiliates you share with below? *</label>
					<br/>
						<label for="">Financial Companies:</label>
						<textarea class="form-control" rows="3" name="affiliateProgram"></textarea>
						
						<label for="">Nonfinancial Companies</label>
						<textarea class="form-control" rows="3" name="affiliateProgram"></textarea>
						
						<label for="">Others:</label>
						<textarea class="form-control" rows="3" name="affiliateProgram"></textarea>
					</div>
					
					<div class="form-group" id="noneAffiliateProgram" >
						<label for="noneAffiliateProgram">18. Please list your non-affiliates below?</label>
						<textarea class="form-control" rows="3" name="noneAffiliateProgram" id="noneAffiliateProgram"
						 placeholder="Categories of companies, such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations"></textarea>
					</div>
					
					<div class="form-group" id="jointMarketing" >
						<label for="">19. Please list your joint marketing partners below?</label>
						<textarea class="form-control" rows="3" name="jointMarketing" placeholder="list categories of companies, such as credit card companies"></textarea>
					</div>   

							<div class="form-group">
								<label for="stateLaw">20. Please provide other information information.</label>
								<textarea name="stateLaw" class="form-control" rows="7" 
								          placeholder="Example: acknowledgment of receipt form." ></textarea>
							</div>
							
							<hr>
							<button type="submit" name="preview" class="btn btn-default"
								onclick="form.action='preview.do';">Preview</button>
							<button type="submit" name="saveforlater" class="btn btn-default"
								onclick="form.action='save.do';">Save for later</button>
					</form>
				</div>
		</div>
</body>
</html>
