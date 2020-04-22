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
	private int ref;
	private int step;
	private int lev;
	private int pnum;
	private int reply;	
	
	//NO	WRITER	TITLE	PASSWORD	CONTENTS	HIT	FILENAME	REGDATE	ID	REF	STEP	LEV	PNUM	REPLY	

	
	public String getId() {
		return id;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
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
				+ regdate + ", id=" + id + ", ref=" + ref + ", step=" + step + ", lev=" + lev + ", pnum=" + pnum
				+ ", reply=" + reply + "]";
	}
	
	
	
	


}
