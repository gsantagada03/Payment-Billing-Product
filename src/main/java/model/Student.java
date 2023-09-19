package model;

public class Student {

	private int id;
	private String name;
	private String course;
	private String mobile;
	private String fatherName;
	private String motherName;
	private String qualification;
	private String dateOfBirth;
	private String dateOfJoining;
	private String dateOfSubmission;
	private int paid;
	private int fee;
	private int balance;
	private String address;
	private String trainer;
	public Student(String name, String course, String mobile, String fatherName, String motherName,
			String qualification, String dateOfBirth, String dateOfJoining, String dateOfSubmission, int paid, int fee,
			int balance, String address, String trainer) {

		
		this.name = name;
		this.course = course;
		this.mobile = mobile;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.qualification = qualification;
		this.dateOfBirth = dateOfBirth;
		this.dateOfJoining = dateOfJoining;
		this.dateOfSubmission = dateOfSubmission;
		this.paid = paid;
		this.fee = fee;
		this.balance = balance;
		this.address = address;
		this.trainer = trainer;
	}
	
	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getDateOfJoining() {
		return dateOfJoining;
	}
	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}
	public String getDateOfSubmission() {
		return dateOfSubmission;
	}
	public void setDateOfSubmission(String dateOfSubmission) {
		this.dateOfSubmission = dateOfSubmission;
	}
	public int getPaid() {
		return paid;
	}
	public void setPaid(int paid) {
		this.paid = paid;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTrainer() {
		return trainer;
	}
	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}
	
}