package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;

//���⼭ �𵨰�ü�� �����ϸ� ������ �ٽ� �������־���Ѵ�
@WebServlet("*.apos")
@MultipartConfig(maxFileSize=1024*1024*10, location="C:\\kosta97\\webapp\\service\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\semi_Pos\\upload\\")

public class ControllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ControllServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doService(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doService(request,response);
	}
	protected void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			// ����ڷ� ���� ��û�� �޴´�. 
			String cmd = request.getParameter("cmd");
			// cmd�� �� ���� ��� (����ڷ� ���� ��û�� �ִ�)
			if(cmd != null){
				ActionFactory factory = ActionFactory.getFactory();
				Action action = factory.getAction(cmd);
//				if(cmd.equals("index")){
//					action = new IndexAction();
//				}else if(cmd.equals("today")){
//					action = new TodayAction();
//				}
				ActionForward af = action.execute(request,response);
				if(af.isMethod()){
					response.sendRedirect(af.getUrl());
				}else{
					//forward
					RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
					rd.forward(request, response);
				}
				
			}else{
				// ��û�� ���ٸ� ó���� ����...
			}
	}

}
