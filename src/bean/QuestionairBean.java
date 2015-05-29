/*
 * Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package bean;

import java.io.Serializable;

public class QuestionairBean implements Serializable {
	private static final long serialVersionUID = 1L;
	String reviseDate;
	String companyName;
	String[] personalInfoType;
	String affiliatemarkettocus;
	String isoptout;
	String[] opt_out;
	String question1;
	String question1b;
	String question2;
	String question2b;
	String question3;
	String question3b;
	String question4;
	String question4b;
	String question5;
	String question5b;
	String question6;
	String question6b;
	String optPhone;
	String optWebsite;
	String optionsRadios;
	String city;
	String address;
	String state;
	String zipcode;
	String thirdPartyCookie;
	String dntoptput;
	String numOfDays;
	String phoneText;
	String websiteText;
	String whoseNotice;
	String howProtect;
	String[] collect;
	String collectaffiliate;
	String isFromCompany;
	String isPresentLaw;
	String lawDetails;
	String whatHappenWhenLimit;
	String affiliateProgram;
	String noneAffiliateProgram;
	String jointMarketing;
	String stateLaw;
	
	public QuestionairBean() {
		this.reviseDate = "-1";
		this.companyName = "-1";
		this.personalInfoType = new String[0];
		this.affiliatemarkettocus = "-1";
		this.isoptout = "-1";
		this.opt_out = new String[0];
		this.question1 = "-1";
		this.question1b = "-1";
		this.question2 = "-1";
		this.question2b = "-1";
		this.question3 = "-1";
		this.question3b = "-1";
		this.question4 = "-1";
		this.question4b = "-1";
		this.question5 = "-1";
		this.question5b = "-1";
		this.question6 = "-1";
		this.question6b = "-1";
		this.optPhone = "-1";
		this.optWebsite = "-1";
		this.numOfDays = "-1";
		this.optionsRadios = "-1";
		this.city = "-1";
		this.address = "-1";
		this.state = "-1";
		this.zipcode = "-1";
		this.thirdPartyCookie = "-1";
		this.dntoptput = "-1";
		this.phoneText = "-1";
		this.websiteText = "-1";
		this.whoseNotice = "-1";
		this.howProtect = "-1";
		this.collect = new String[0];
		this.collectaffiliate = "-1";
		this.isFromCompany = "-1";
		this.isPresentLaw = "-1";
		this.lawDetails = "-1";
		this.whatHappenWhenLimit = "-1";
		this.affiliateProgram = "-1";
		this.noneAffiliateProgram = "-1";
		this.jointMarketing = "-1";
		this.stateLaw = "-1";
	}

	public String getReviseDate() {
		return reviseDate;
	}

	public void setReviseDate(String reviseDate) {
		this.reviseDate = reviseDate;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String[] getPersonalInfoType() {
		return personalInfoType;
	}

	public void setPersonalInfoType(String[] personalInfoType) {
		this.personalInfoType = personalInfoType;
	}

	public String getAffiliatemarkettocus() {
		return affiliatemarkettocus;
	}

	public void setAffiliatemarkettocus(String affiliatemarkettocus) {
		this.affiliatemarkettocus = affiliatemarkettocus;
	}

	public String getIsoptout() {
		return isoptout;
	}

	public void setIsoptout(String isoptout) {
		this.isoptout = isoptout;
	}

	public String[] getOpt_out() {
		return opt_out;
	}

	public void setOpt_out(String[] opt_out) {
		this.opt_out = opt_out;
	}

	public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getQuestion1b() {
		return question1b;
	}

	public void setQuestion1b(String question1b) {
		this.question1b = question1b;
	}

	public String getQuestion2() {
		return question2;
	}

	public void setQuestion2(String question2) {
		this.question2 = question2;
	}

	public String getQuestion2b() {
		return question2b;
	}

	public void setQuestion2b(String question2b) {
		this.question2b = question2b;
	}

	public String getQuestion3() {
		return question3;
	}

	public void setQuestion3(String question3) {
		this.question3 = question3;
	}

	public String getQuestion3b() {
		return question3b;
	}

	public void setQuestion3b(String question3b) {
		this.question3b = question3b;
	}

	public String getQuestion4() {
		return question4;
	}

	public void setQuestion4(String question4) {
		this.question4 = question4;
	}

	public String getQuestion4b() {
		return question4b;
	}

	public void setQuestion4b(String question4b) {
		this.question4b = question4b;
	}

	public String getQuestion5() {
		return question5;
	}

	public void setQuestion5(String question5) {
		this.question5 = question5;
	}

	public String getQuestion5b() {
		return question5b;
	}

	public void setQuestion5b(String question5b) {
		this.question5b = question5b;
	}

	public String getQuestion6() {
		return question6;
	}

	public void setQuestion6(String question6) {
		this.question6 = question6;
	}

	public String getQuestion6b() {
		return question6b;
	}

	public void setQuestion6b(String question6b) {
		this.question6b = question6b;
	}

	public String getOptPhone() {
		return optPhone;
	}

	public void setOptPhone(String optPhone) {
		this.optPhone = optPhone;
	}

	public String getOptWebsite() {
		return optWebsite;
	}

	public void setOptWebsite(String optWebsite) {
		this.optWebsite = optWebsite;
	}

	public String getOptionsRadios() {
		return optionsRadios;
	}

	public void setOptionsRadios(String optionsRadios) {
		this.optionsRadios = optionsRadios;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getThirdPartyCookie() {
		return thirdPartyCookie;
	}

	public void setThirdPartyCookie(String thirdPartyCookie) {
		this.thirdPartyCookie = thirdPartyCookie;
	}

	public String getDntoptput() {
		return dntoptput;
	}

	public void setDntoptput(String dntoptput) {
		this.dntoptput = dntoptput;
	}

	public String getNumOfDays() {
		return numOfDays;
	}

	public void setNumOfDays(String numOfDays) {
		this.numOfDays = numOfDays;
	}

	public String getPhoneText() {
		return phoneText;
	}

	public void setPhoneText(String phoneText) {
		this.phoneText = phoneText;
	}

	public String getWebsiteText() {
		return websiteText;
	}

	public void setWebsiteText(String websiteText) {
		this.websiteText = websiteText;
	}

	public String getWhoseNotice() {
		return whoseNotice;
	}

	public void setWhoseNotice(String whoseNotice) {
		this.whoseNotice = whoseNotice;
	}

	public String getHowProtect() {
		return howProtect;
	}

	public void setHowProtect(String howProtect) {
		this.howProtect = howProtect;
	}

	public String[] getCollect() {
		return collect;
	}

	public void setCollect(String[] collect) {
		this.collect = collect;
	}

	public String getCollectaffiliate() {
		return collectaffiliate;
	}

	public void setCollectaffiliate(String collectaffiliate) {
		this.collectaffiliate = collectaffiliate;
	}

	public String getIsFromCompany() {
		return isFromCompany;
	}

	public void setIsFromCompany(String isFromCompany) {
		this.isFromCompany = isFromCompany;
	}

	public String getIsPresentLaw() {
		return isPresentLaw;
	}

	public void setIsPresentLaw(String isPresentLaw) {
		this.isPresentLaw = isPresentLaw;
	}

	public String getLawDetails() {
		return lawDetails;
	}

	public void setLawDetails(String lawDetails) {
		this.lawDetails = lawDetails;
	}

	public String getWhatHappenWhenLimit() {
		return whatHappenWhenLimit;
	}

	public void setWhatHappenWhenLimit(String whatHappenWhenLimit) {
		this.whatHappenWhenLimit = whatHappenWhenLimit;
	}

	public String getAffiliateProgram() {
		return affiliateProgram;
	}

	public void setAffiliateProgram(String affiliateProgram) {
		this.affiliateProgram = affiliateProgram;
	}

	public String getNoneAffiliateProgram() {
		return noneAffiliateProgram;
	}

	public void setNoneAffiliateProgram(String noneAffiliateProgram) {
		this.noneAffiliateProgram = noneAffiliateProgram;
	}

	public String getJointMarketing() {
		return jointMarketing;
	}

	public void setJointMarketing(String jointMarketing) {
		this.jointMarketing = jointMarketing;
	}

	public String getStateLaw() {
		return stateLaw;
	}

	public void setStateLaw(String stateLaw) {
		this.stateLaw = stateLaw;
	}
}