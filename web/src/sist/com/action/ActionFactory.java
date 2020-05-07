package sist.com.action;

public class ActionFactory {
	public static Action getAction(String cmd) {
		Action action = null;
		if(cmd.equals("login")) {
			action=new AdminLoginAction("jsp/admin.jsp",true);
			//true 로 가면 리다이렉트
			//root 경로 이후의 주소
			//admin.jsp from의 action 경로를 action="/web/login.do?cmd=login" 로 지정했기 때문에 가능함
		}else if(cmd.equals("memberList")) {
			action=new MemberListAction("jsp/memberList.jsp", true);
			//true|false의 차이 == 저장 헀을 때 차이
		}
		return action;
	}
}
