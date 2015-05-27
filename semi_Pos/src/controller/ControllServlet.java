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

//여기서 모델객체를 생성하면 서버를 다시 시작해주어야한다
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
			// 사용자로 부터 요청을 받는다. 
			String cmd = request.getParameter("cmd");
			// cmd가 꼭 있을 경우 (사용자로 부터 요청이 있담)
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
				// 요청이 없다면 처리할 로직...
			}
	}

}
