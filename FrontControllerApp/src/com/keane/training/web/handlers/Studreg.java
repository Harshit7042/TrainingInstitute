
package com.keane.training.web.handlers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.DAOAppException;
import com.keane.training.dao.RegisterDAO;
import com.keane.training.dao.StudentDAO;
import com.keane.training.domain.Student;
import com.keane.training.domain.User;


public class Studreg implements HttpRequestHandler {
	static Logger log = Logger.getLogger(Studreg.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		StudentDAO dao = new StudentDAO();
		Student user = new Student();
		user.setSid(Integer.parseInt(request.getParameter("sid")));
		user.setSname(request.getParameter("sname"));
		user.setSqual(request.getParameter("squal"));
		user.setContact(request.getParameter("scontact"));
		user.setSaddr(request.getParameter("saddr"));
		user.setSemail(request.getParameter("semail"));
		user.setSpass(request.getParameter("spass"));
		user.setIid(Integer.parseInt(request.getParameter("iid")));
		


		try {
					int finalRes = StudentDAO.insertStudent(user);
				if (finalRes > 0) {

					RequestDispatcher dispatcher = request
							.getRequestDispatcher("..\\pages\\index.jsp");
					request.setAttribute("success",
							"User succesfully registered with the system");
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


