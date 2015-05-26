<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="top.jsp" />

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
			<form role="form" method="post" action="save.do">
				<div class="form-group">
					<label for="companyName">Enter the name of financial
						institution</label> <input type="text" class="form-control"
						name="companyName">
				</div>
				<div class="form-group">
					<label for="reviseDate">Enter last revised date</label> <input
						type="text" class="form-control" name="reviseDate">
				</div>
				<div class="form-group">
					<label for="companyName">What types of personal
						information you collect and share? (Choose minimum of 5)</label>
					<div class="checkbox">
						<label> <input type="checkbox" name="ssn" value="social security number" checked
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
					
					<script>
						var values = $("input:checkbox:checked").map(function () {
						  return this.value;
						}).get();
						alert(values);
					</script>
					
					<div class="form-group">
						<label for="">Do you have affiliate
							program</label>
						<div class="radio">
							<label> <input type="radio" name="isAffiliateProgram"
								id="isAffiliateProgram" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="isAffiliateProgram"
								id="isAffiliateProgram" value="no"> No
							</label>
						</div>
					</div>

					<script>
						$("input[name='isAffiliateProgram']").change(function() {

							if ($(this).val() == "yes") {
								$("#shareAffiliateProgram").show();
							} else {
								$("#shareAffiliateProgram").hide();
							}

						});
					</script>

					<div class="form-group" id="shareAffiliateProgram"
						style="display: none">
						<label for="">Do you share personal
							information with affiliates?</label>
						<div class="radio">
							<label> <input type="radio" name="shareAffiliateProgram"
								id="shareAffiliateProgram" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="shareAffiliateProgram"
								id="shareAffiliateProgram" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='shareAffiliateProgram']").change(function() {

							if ($(this).val() == "yes") {
								$("#affiliateProgram").show();
							} else {
								$("#affiliateProgram").hide();
							}

						});
					</script>
					<div class="form-group" id="affiliateProgram"
						style="display: none">
						<label for="">Who are your
							affiliates?</label>
						<textarea class="form-control" rows="3"
							name="affiliateProgram"></textarea>
					</div>
					<div class="form-group">
						<label for="">Do you share
							information with non-affiliates?</label>
						<div class="radio">
							<label> <input type="radio"
								name="shareNoneAffiliateProgram"
								id="shareNoneAffiliateProgram" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio"
								name="shareNoneAffiliateProgram"
								id="shareNoneAffiliateProgram" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='shareNoneAffiliateProgram']")
								.change(function() {

									if ($(this).val() == "yes") {
										$("#noneAffiliateProgram").show();
									} else {
										$("#noneAffiliateProgram").hide();
									}

								});
					</script>
					<div class="form-group" id="noneAffiliateProgram"
						style="display: none;">
						<label for="noneAffiliateProgram">Who are your
							non-affiliates?</label>
						<textarea class="form-control" rows="3"
							name="noneAffiliateProgram" id="noneAffiliateProgram"></textarea>
					</div>
					<div class="form-group">
						<label for="isJointMarketing">Do you engage in joint
							marketing?</label>
						<div class="radio">
							<label> <input type="radio" name="isJointMarketing"
								id="isJointMarketing" value="yes"> Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="isJointMarketing"
								id="isJointMarketing" value="no"> No
							</label>
						</div>
					</div>
					<script>
						$("input[name='isJointMarketing']").change(function() {

							if ($(this).val() == "yes") {
								$("#jointMarketing").show();
							} else {
								$("#jointMarketing").hide();
							}

						});
					</script>
					<div class="form-group" id="jointMarketing"
						style="display: none;">
						<label for="">Who are your joint
							marketing partners?</label>
						<textarea class="form-control" rows="3"
							name="jointMarketing"></textarea>
					</div>


					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Reasons you can share your customer's information</th>
								<th>Do you share?</th>
								<th>Can customer limit this sharing?</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>For everyday business purposes-such as to process
									customer's transactions, maintain customer's account(s),
									respond to court orders and legal investigations, or report to
									credit bureaus</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="doYouShare"
											id="EverydayBusiness" value="yes"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="doYouShare"
											id="EverydayBusiness" value="no"> No
										</label>
									</div>
								</td>
								<td>

									<div id="EverydayBusiness_limit_div">
										<div class="radio">
											<label> <input type="radio"
												name="doYouShare" id="doYouShare"
												value="yes"> Yes
											</label>
										</div>
										<div class="radio">
											<label> <input type="radio"
												name="EverydayBusiness_limit" id="EverydayBusiness_limit"
												value="no"> No
											</label>
										</div>
									</div>
									<div id="wedonotshare" style="display: none">
										<span>We do not share</span>
									</div> <script>
										$("input[id='EverydayBusiness']")
												.change(
														function() {

															if ($(this).val() == "no") {
																$(
																		"#wedonotshare")
																		.show();
																$(
																		"#EverydayBusiness_limit_div")
																		.hide();
															} else {
																$(
																		"#wedonotshare")
																		.hide();
																$(
																		"#EverydayBusiness_limit_div")
																		.show();
															}

														});
									</script>
								</td>
							</tr>
							<tr>
								<td>For marketing purposes-with service providers you use
									to offer your products and services to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td>For joint marketing with other financial companies</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
							<tr>
								<td>For afiliate's everyday business purpose information
									about your transactions and experiences</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr>
								<td>For affiliates' everyday business purposes information
									about your creditworthiness</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr style="display: none" id="sharepersonalinfo">
								<td>For our affiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>

							<tr>
								<td>For nonaffiliates to market to customer</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
								<td>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios1" value="option1"> Yes
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="optionsRadios"
											id="optionsRadios2" value="option2"> No
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="form-group">
						<label for="phone">Enter your phone number</label> <input
							type="tel" class="form-control" id="phone"
							name="phone">
					</div>

					<div class="form-group">
						<label for="website">Enter your website domain
							name</label> <input type="url" class="form-control"
							id="website" name="website">
					</div>

					<form role="form">
						<div class="form-group">
							<label for="twoOrMoreInstitute">Is this privacy policy
								jointly provided by two or more financial institutions?</label>
							<div class="radio">
								<label> <input type="radio" name="twoOrMoreInstitute"
									id="twoOrMoreInstitute" value="yes"> Yes
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="twoOrMoreInstitute"
									id="twoOrMoreInstitute" value="no"> No
								</label>
							</div>
						</div>
						<script>
							$("input[name='twoOrMoreInstitute']").change(function() {

								if ($(this).val() == "yes") {
									$("#whoseNotice").show();
								} else {
									$("#whoseNotice").hide();
								}

							});
						</script>
						<div class="form-group" id="whoseNotice"
							style="display: none;">
							<label for="whoseNotice">Who is providing this notice?</label> 
							<input type="text" class="form-control" id="whoseNotice">
						</div>
						<div class="form-group">
							<label for="howProtect">How do you protect user's personal
								information?</label>
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">How do you collect
								user's personal information?</label>
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
								<label for="isFromAff">Do you collect information from affiliates and/or credit bureaus?</label>
								<div class="radio">
									<label> <input type="radio"
										name="isFromAff"
										id="isFromAff" value="yes"> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio"
										name="isFromAff"
										id="isFromAff" value="no"> No
									</label>
								</div>
							</div>
							<script>
								$("input[name='isFromAff']")
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
							<div class="form-group" id="isFromCompany"
								style="display: none;">
								<label for="exampleInputPassword1">Do you collect
									information from companies?</label>
								<div class="radio">
									<label> <input type="radio" name="isFromCompany"
										id="isFromCompany" value="yes" checked> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="isFromCompany"
										id="isFromCompany" value="no2"> No
									</label>
								</div>
							</div>



							<div class="form-group">
								<label for="isPresentLaw">Are you going to describe state privacy
									law previous in "Other important information" section?</label>
								<div class="radio">
									<label> <input type="radio" name="isPresentLaw"
										id="isPresentLaw" value="yes" checked> Yes
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="isPresentLaw"
										id="isPresentLaw" value="no"> No
									</label>
								</div>
							</div>

							<div class="form-group">
								<label for="why">What happens when users limit sharing
									for an account that is jointly held with someone else?</label>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option1" checked> Your
										choices apply to everyone on the account
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option2"> Your choices will
										apply to everyone on the account - unless you tell us
										otherwise
									</label>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1"> Provide information
									about state laws below</label>
								<textarea class="form-control" rows="10"></textarea>
							</div>



							<hr>
							<button type="submit" name="preview" class="btn btn-default">Preview</button>
							<button type="submit" name="saveforlater" class="btn btn-default">Save
								for later</button>
					</form>
				</div>
		</div>
</body>
</html>
