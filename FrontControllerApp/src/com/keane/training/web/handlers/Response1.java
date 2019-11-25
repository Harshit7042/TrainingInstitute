package com.keane.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keane.mvc.HttpRequestHandler;
import com.keane.training.dao.StudentDAO ;
import com.keane.training.domain.Response;
import com.keane.training.domain.Student;

public class Response1  implements HttpRequestHandler{


	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	

		try {
			
		
			PrintWriter pr=response.getWriter();
			List<Response> s=null;
		StudentDAO d=new StudentDAO();
		String iid=request.getParameter("sname");
	
			s=d.ViewResponse(iid);
			pr.println("<center>");
			   pr.println("<table border='2'>");
			   pr.println("<tr><th>RequestId</th><th>StudentId</th><th>Response</th></tr>");
			if(!(s.isEmpty())){
				for(Iterator it=s.iterator();it.hasNext();){
					Student s1=(Student)it.next();
					 pr.println("<tr><td>"+s1.getSname()+"\t"+s1.getRes()+"</td></tr><br>");
				}
			}
			pr.println("</table>");
			   pr.println("</center>");
			}
		 catch (Exception e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}
}


