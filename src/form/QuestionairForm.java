package form;

import org.mybeans.form.FormBean;

import java.util.*;

public class QuestionairForm extends FormBean{
	String reviseDate;
	String companyName;
	ArrayList<String> personalInfoType = new ArrayList<String>();
	String isAffiliateProgram;
	String shareAffiliateProgram;
	String affiliateProgram;
	String shareNoneAffiliateProgram;
	String noneAffiliateProgram;
	String isJointMarketing;
	String jointMarketing;
	String[] doYouShare = new String[6];
	String[] customerLimit = new String[6];
	String phone;
	String website;
	String twoOrMoreInstitute;
	String whoseNotice;
	String howProtect;
	ArrayList<String> collect = new ArrayList<String>();
	String isFromAff;
	String isFromCompany;
	String isPresentLaw;
	String whatHappenWhenLimit;
	String stateLaw;

	
	public String isFromCompany() {
		return isFromCompany;
	}
	public void setFromCompany(String isFromCompany) {
		this.isFromCompany = isFromCompany;
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
	public ArrayList<String> getPersonalInfoType() {
		return personalInfoType;
	}
	public void setPersonalInfoType(ArrayList<String> personalInfoType) {
		this.personalInfoType = personalInfoType;
	}
	public String isAffiliateProgram() {
		return isAffiliateProgram;
	}
	public void setAffiliateProgram1(String isAffiliateProgram) {
		this.isAffiliateProgram = isAffiliateProgram;
	}
	public String isShareAffiliateProgram() {
		return shareAffiliateProgram;
	}
	public void setShareAffiliateProgram(String shareAffiliateProgram) {
		this.shareAffiliateProgram = shareAffiliateProgram;
	}
	public String getAffiliateProgram() {
		return affiliateProgram;
	}
	public void setAffiliateProgram(String b) {
		this.affiliateProgram = b;
	}
	public String isShareNoneAffiliateProgram() {
		return shareNoneAffiliateProgram;
	}
	public void setShareNoneAffiliateProgram(String shareNoneAffiliateProgram) {
		this.shareNoneAffiliateProgram = shareNoneAffiliateProgram;
	}
	public String getNoneAffiliateProgram() {
		return noneAffiliateProgram;
	}
	public void setNoneAffiliateProgram(String noneAffiliateProgram) {
		this.noneAffiliateProgram = noneAffiliateProgram;
	}
	public String isJointMarketing() {
		return isJointMarketing;
	}
	public void setJointMarketing1(String isJointMarketing) {
		this.isJointMarketing = isJointMarketing;
	}
	public String getJointMarketing() {
		return jointMarketing;
	}
	public void setJointMarketing(String jointMarketing) {
		this.jointMarketing = jointMarketing;
	}
	public String[] getDoYouShare() {
		return doYouShare;
	}
	public void setDoYouShare(String[] doYouShare) {
		this.doYouShare = doYouShare;
	}
	public String[] getCustomerLimit() {
		return customerLimit;
	}
	public void setCustomerLimit(String[] customerLimit) {
		this.customerLimit = customerLimit;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String isTwoOrMoreInstitute() {
		return twoOrMoreInstitute;
	}
	public void setTwoOrMoreInstitute(String twoOrMoreInstitute) {
		this.twoOrMoreInstitute = twoOrMoreInstitute;
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
	public ArrayList<String> getCollect() {
		return collect;
	}
	public void setCollect(ArrayList<String> collect) {
		this.collect = collect;
	}
	public String isFromAff() {
		return isFromAff;
	}
	public void setFromAff(String isFromAff) {
		this.isFromAff = isFromAff;
	}
	public String isPresentLaw() {
		return isPresentLaw;
	}
	public void setPresentLaw(String isPresentLaw) {
		this.isPresentLaw = isPresentLaw;
	}
	public String getWhatHappenWhenLimit() {
		return whatHappenWhenLimit;
	}
	public void setWhatHappenWhenLimit(String whatHappenWhenLimit) {
		this.whatHappenWhenLimit = whatHappenWhenLimit;
	}
	public String getStateLaw() {
		return stateLaw;
	}
	public void setStateLaw(String stateLaw) {
		this.stateLaw = stateLaw;
	}
}