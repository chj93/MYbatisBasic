package sist.com.action;

public class ActionFactory {
	public static Action getAction(String cmd) {
		Action action = null;
		if(cmd.equals("login")) {
			action=new AdminLoginAction("jsp/admin.jsp",true);
			//true �� ���� �����̷�Ʈ
			//false ������
			
				//"jsp/admin.jsp" == root ��� ������ �ּ� -> admin.jsp from�� action ��θ� action="/web/login.do?cmd=login" �� �����߱� ������ ������
		}else if(cmd.equals("memberList")) {
			action=new MemberListAction("jsp/memberList.jsp",false);
			//true �ϰ�� url�� do�� �ȳѾ�ϱ� ���� �Ѿ�� X
			//false ������   url�� do�� ����. -> ���� �ҷ����� �� ����

		}
		return action;
	}
}
