package sist.com.action;

public class ActionFactory {
	public static Action getAction(String cmd) {
		Action action = null;
		if(cmd.equals("login")) {
			action=new AdminLoginAction("jsp/admin.jsp",true);
			//true 로 가면 리다이렉트 -> url 변화 x 값을가지고 넘어갈수 x
			//false 디스패쳐
			
			//"jsp/admin.jsp" == root 경로 이후의 주소 -> admin.jsp from의 action 경로를 action="/web/login.do?cmd=login" 로 지정했기 때문에 가능함
		}else if(cmd.equals("memberList")) {
			action=new MemberListAction("jsp/memberList.jsp",false);
			//true 일경우 url이 do로 안넘어가니까 값이 넘어가지 X
			//false 디스패쳐   url이 do로 전달. -> 값을 불러들일 수 있음
		}
		return action;
	}
}
