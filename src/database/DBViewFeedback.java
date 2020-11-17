package database;

public class DBViewFeedback {
	String name,contact,overallExperience,comment,status;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setOverallExperience(String overallExperience) {
		this.overallExperience = overallExperience;
	}
	public void setContact(String contact) {
		this.contact =contact;
	}
	public String getOverallExperience() {
		return overallExperience;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}