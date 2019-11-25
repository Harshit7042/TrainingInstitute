package com.keane.training.web.handlers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.AdminDAO;
import com.keane.training.dao.InstituteDAO;
public class Approve implements HttpRequestHandler{
	static Logger log = Logger.getLogger(Approve.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		AdminDAO ad=new AdminDAO();
		PrintWriter out=response.getWriter();
		int i=Integer.parseInt(request.getParameter("iid"));
		int stat=Integer.parseInt(request.getParameter("status"));
		int s=ad.InsertStatus(i,stat);
		if(s!=0)
		{
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("..\\pages\\Adminhome.jsp");
			request.setAttribute("success",
					"User succesfully registered with the system");
			
			dispatcher.forward(request, response);
		
		
			
		}
		
		
	}
}