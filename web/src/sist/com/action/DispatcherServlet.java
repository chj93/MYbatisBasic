package sist.com.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		//System.out.println("DispatcherServlet");
		
		request.setCharacterEncoding("EUC-KR");
		//post����ϋ��� �̰�����.
		
		String cmd=request.getParameter("cmd");
		Action action = ActionFactory.getAction(cmd);
		
		ActionForWard af=action.execute(request);
		if(af.isRedirect()) {
		//����-> ���� ����
		//url�� �ٲ� ���� ���񽺰� �ٲ�� ������ request, response�� �ٽ�! -> url�� �������� �ʵ���
		//����, ���ø����̼�, ������, ��Ű��  X
			//af.isRedirect()�� true�� �����̷�Ʈ��
			response.sendRedirect(af.getPath());
		}else {
			//af.isRedirect()�� true�� �����ķ�
			//url �ٲ�.
			RequestDispatcher rd=request.getRequestDispatcher(af.getPath());
			rd.forward(request, response);
		}
	}
	
}
