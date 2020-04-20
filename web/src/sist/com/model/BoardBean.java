package sist.com.model;
public class BoardBean {
	private int no;
	private String writer;
	private String title;
	private String password;
	private String contents;
	private String fileName;
	private int hit;
	private String regdate;
	
	
	
	
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BoardBean [no=" + no + ", writer=" + writer + ", title=" + title + ", password=" + password
				+ ", contents=" + contents + ", fileName=" + fileName + ", hit=" + hit + ", regdate=" + regdate + "]";
	}
	public static void main(String[] args) {
		
	}
	
	
	
	

}
