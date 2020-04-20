package sist.com.model;

public class BbsBean {
	private int no;
	private int grade;
	private String writer;
	private String title;
	private String password;
	private String contents;
	private int  hit;
	private String filename;
	private String regdate;
	private String id;	

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BbsBean [no=" + no + ", grade=" + grade + ", writer=" + writer + ", title=" + title + ", password="
				+ password + ", contents=" + contents + ", hit=" + hit + ", filename=" + filename + ", regdate="
				+ regdate + ", id=" + id + "]";
	}
	
	
	
	


}
