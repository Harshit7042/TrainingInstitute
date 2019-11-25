package com.keane.training.web.handlers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.InstituteDAO;
import com.keane.training.domain.Request;
import com.keane.training.domain.Response;
import com.keane.training.domain.Student;

public class SendResponse implements HttpRequestHandler{
	static Logger log = Logger.getLogger(SendResponse.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		InstituteDAO dao = new InstituteDAO();
		
String name=request.getParameter("sname");
String r=request.getParameter("response");

		

		try {
			
				int finalRes = InstituteDAO.InsertResponse(name,r);
				if (finalRes > 0) {

					RequestDispatcher dispatcher = request
							.getRequestDispatcher("..\\pages\\InstituteHome.jsp");
					request.setAttribute("success",
							"Response sent to student");
					
					dispatcher.forward(request, response);
				}
			}
		 catch (Exception e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}
	
}
