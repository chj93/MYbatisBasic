package sist.com.model;

public class MemberBean {
	private int   no;
	private String id;
	private String password;
	private String gender;
	private String birth;
	private String address;
	private String email;
	private String tel;
	private String cp;
	private String regdate;
	private String name;
	
	public MemberBean(int no, String id, String password, String gender, String birth) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.gender = gender;
		this.birth = birth;
	}
	public MemberBean() {
		super();
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "MemberBean [no=" + no + ", id=" + id + ", name=" + name + ", password=" + password + ", gender="
				+ gender + ", birth=" + birth + ", address=" + address + ", email=" + email + ", tel=" + tel + ", cp="
				+ cp + ", regdate=" + regdate + "]";
	}
	
	
	

}
