package sist.com.model;

public class AjaxcrudBean {
	private int no;
	private String id;
	private String contents;
	private String regdate;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public AjaxcrudBean() {
		super();
	}
	public AjaxcrudBean(int no, String id, String contents, String regdate) {
		super();
		this.no = no;
		this.id = id;
		this.contents = contents;
		this.regdate = regdate;
	}
	
	
	public AjaxcrudBean(String id, String contents) {
		super();
		this.id = id;
		this.contents = contents;
	}
	@Override
	public String toString() {
		return "AjaxcrudBean [no=" + no + ", id=" + id + ", contents=" + contents + ", regdate=" + regdate + "]";
	}
	
	

}
