package com.keane.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.InstituteDAO;
import com.keane.training.dao.StudentDAO;
import com.keane.training.domain.Institute;
import com.keane.training.domain.Student;

public class InstituteCheck implements HttpRequestHandler{
	static Logger log = Logger.getLogger(InstituteCheck.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
          List l2=null;
          PrintWriter out=response.getWriter();
		InstituteDAO dao = new InstituteDAO();
		Institute user = new Institute();
		user.setIid(Integer.parseInt(request.getParameter("iid")));
		
		

		try {
			
				l2 = InstituteDAO.getCheck(user);
				if (!(l2.isEmpty())) {



                 response.setContentType("text/html");
					
					out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			        out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script");
			        out.println("<script>");
			        out.println("$(document).ready(function(){");
			        out.println("swal('We Will Get Back To You Soon','Thank You','info');");
			        out.println("});");
			        out.println("</script>");

					RequestDispatcher dispatcher = request
							.getRequestDispatcher("..\\pages\\Request.jsp");
					request.setAttribute("success",
							"User succesfully registered with the system");
					request.setAttribute("details", user);
					dispatcher.forward(request, response);
				}
				else
				{
					out.println("instiute not approved");
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
