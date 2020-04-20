package sist.com.model;

public class EmpGroup {
	private int deptno;
	private int maxsal;
	private int minsal;
	private int cnt;
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public int getMaxsal() {
		return maxsal;
	}
	public void setMaxsal(int maxsal) {
		this.maxsal = maxsal;
	}
	public int getMinsal() {
		return minsal;
	}
	public void setMinsal(int minsal) {
		this.minsal = minsal;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "EmpGroup [deptno=" + deptno + ", maxsal=" + maxsal + ", minsal=" + minsal + ", cnt=" + cnt + "]";
	}
	
	

}
