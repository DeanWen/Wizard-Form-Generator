package bean;

import org.mybeans.form.FormBean;

import java.util.*;

public class QuestionairBean extends FormBean{
	String reviseDate;
	String companyName;
	ArrayList<String> personalInfoType = new ArrayList<String>();
	boolean isAffiliateProgram;
	boolean shareAffiliateProgram;
	String affiliateProgram;
	boolean shareNoneAffiliateProgram;
	String noneAffiliateProgram;
	boolean isJointMarketing;
	String jointMarketing;
	boolean[] doYouShare = new boolean[6];
	boolean[] customerLimit = new boolean[6];
	String phone;
	String website;
	boolean twoOrMoreInstitute;
	String whoseNotice;
	String howProtect;
	ArrayList<String> collect = new ArrayList<String>();
	boolean isFromAff;
	boolean isFromCompany;
	boolean isPresentLaw;
	String whatHappenWhenLimit;
	String stateLaw;

	
	public boolean isFromCompany() {
		return isFromCompany;
	}
	public void setFromCompany(boolean isFromCompany) {
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
	public boolean isAffiliateProgram() {
		return isAffiliateProgram;
	}
	public void setAffiliateProgram(boolean isAffiliateProgram) {
		this.isAffiliateProgram = isAffiliateProgram;
	}
	public boolean isShareAffiliateProgram() {
		return shareAffiliateProgram;
	}
	public void setShareAffiliateProgram(boolean shareAffiliateProgram) {
		this.shareAffiliateProgram = shareAffiliateProgram;
	}
	public String getAffiliateProgram() {
		return affiliateProgram;
	}
	public void setAffiliateProgram(String affiliateProgram) {
		this.affiliateProgram = affiliateProgram;
	}
	public boolean isShareNoneAffiliateProgram() {
		return shareNoneAffiliateProgram;
	}
	public void setShareNoneAffiliateProgram(boolean shareNoneAffiliateProgram) {
		this.shareNoneAffiliateProgram = shareNoneAffiliateProgram;
	}
	public String getNoneAffiliateProgram() {
		return noneAffiliateProgram;
	}
	public void setNoneAffiliateProgram(String noneAffiliateProgram) {
		this.noneAffiliateProgram = noneAffiliateProgram;
	}
	public boolean isJointMarketing() {
		return isJointMarketing;
	}
	public void setJointMarketing(boolean isJointMarketing) {
		this.isJointMarketing = isJointMarketing;
	}
	public String getJointMarketing() {
		return jointMarketing;
	}
	public void setJointMarketing(String jointMarketing) {
		this.jointMarketing = jointMarketing;
	}
	public boolean[] getDoYouShare() {
		return doYouShare;
	}
	public void setDoYouShare(boolean[] doYouShare) {
		this.doYouShare = doYouShare;
	}
	public boolean[] getCustomerLimit() {
		return customerLimit;
	}
	public void setCustomerLimit(boolean[] customerLimit) {
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
	public boolean isTwoOrMoreInstitute() {
		return twoOrMoreInstitute;
	}
	public void setTwoOrMoreInstitute(boolean twoOrMoreInstitute) {
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
	public boolean isFromAff() {
		return isFromAff;
	}
	public void setFromAff(boolean isFromAff) {
		this.isFromAff = isFromAff;
	}
	public boolean isPresentLaw() {
		return isPresentLaw;
	}
	public void setPresentLaw(boolean isPresentLaw) {
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
