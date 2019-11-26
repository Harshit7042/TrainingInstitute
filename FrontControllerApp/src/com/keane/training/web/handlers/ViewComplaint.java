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
import com.keane.training.dao.AdminDAO;
import com.keane.training.domain.Feedback;

public class ViewComplaint  implements HttpRequestHandler{


	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		PrintWriter out=response.getWriter();
		

		try {
			
		
			PrintWriter pr=response.getWriter();
			List<Feedback> s=null;
		AdminDAO d=new AdminDAO();
		//	int iid=Integer.parseInt(request.getParameter("iid"));
			s=d.ViewComplaints();
			pr.println("<center>");
			   pr.println("<table border='2'>");
			   pr.println("<tr><th>RequestId</th><th>StudentId</th><th>InstituteId" +
			   		"</th><th>Feedback</th></tr>");
			if(!(s.isEmpty())){
				for(Iterator it=s.iterator();it.hasNext();){
					Feedback s1=(Feedback)it.next();
					 pr.println("<tr><td>"+s1.getCid()+"\t"+"</td><td>"+s1.getSid()+"\t"
							 +"</td><td>"+s1.getIid()+"\t"+"</td><td>"+s1.getFeedback()+"\t"+"</td></tr><br>");
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
		String h="<html>";
		h+="<body >";
		
		
		h+="<form action='Adminhome.jsp'>";
		h+="<input type='submit' value='Back'/>";
		h+="</form>";
		
		
		h+="</body>";
		h+="</html>";
		out.print(h);
	}
}