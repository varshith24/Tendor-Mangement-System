package com.model;

public class Tender {
	int tenderid;
	String tenderuser;
	String tendertitle;
	String tenderimage;
	String org;
	String date;
	String description;
	String contactPerson;
	String contactemail;
	String phone;
	public Tender(String user,String tendertitle, String tenderimage, String org, String date, String description,
			String contactPerson, String contactemail, String phone) {
		super();
		this.tenderuser = user;
		this.tendertitle = tendertitle;
		this.tenderimage = tenderimage;
		this.org = org;
		this.date = date;
		this.description = description;
		this.contactPerson = contactPerson;
		this.contactemail = contactemail;
		this.phone = phone;
	}
	public Tender(int tenderid, String tenderuser, String tendertitle, String tenderimage, String org, String date,
			String description, String contactPerson, String contactemail, String phone) {
		super();
		this.tenderid = tenderid;
		this.tenderuser = tenderuser;
		this.tendertitle = tendertitle;
		this.tenderimage = tenderimage;
		this.org = org;
		this.date = date;
		this.description = description;
		this.contactPerson = contactPerson;
		this.phone = phone;
		this.contactemail = contactemail;
	}

	public int getTenderid() {
		return tenderid;
	}

	public void setTenderid(int tenderid) {
		this.tenderid = tenderid;
	}
	public String getTendertitle() {
		return tendertitle;
	}
	public void setTendertitle(String tendertitle) {
		this.tendertitle = tendertitle;
	}
	public String getTenderimage() {
		return tenderimage;
	}
	public void setTenderimage(String tenderimage) {
		this.tenderimage = tenderimage;
	}
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getDate() {
		return date;
	}
	public String getTenderuser() {
		return tenderuser;
	}
	public void setTenderuser(String tenderuser) {
		this.tenderuser = tenderuser;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContactPerson() {
		return contactPerson;
	}
	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}
	public String getContactemail() {
		return contactemail;
	}
	public void setContactemail(String contactemail) {
		this.contactemail = contactemail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
