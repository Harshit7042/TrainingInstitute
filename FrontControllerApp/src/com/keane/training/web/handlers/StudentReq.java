package com.keane.training.web.handlers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.StudentDAO;
import com.keane.training.domain.Request;
import com.keane.training.domain.Student;


public class StudentReq implements HttpRequestHandler {
	static Logger log = Logger.getLogger(StudentReq.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		StudentDAO dao = new StudentDAO();
		Request user = new Request();
		user.setSname(request.getParameter("sname"));
		user.setSqual(request.getParameter("squal"));
		user.setMarks(Integer.parseInt(request.getParameter("marks")));
	
		
		
		
		


		try {
					int finalRes = StudentDAO.ComplaintStudent(user);
				if (finalRes > 0) {

					RequestDispatcher dispatcher = request
							.getRequestDispatcher("..\\pages\\StudentHome.jsp");
					request.setAttribute("success",
							"Request sent");
					request.setAttribute("details", user);
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





