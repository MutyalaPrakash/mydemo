package PostLab;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Getvalues extends HttpServlet {
	
	

public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		
	
		
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		
		String name=req.getParameter("name");
		
		String password=req.getParameter("pwd");
		
		String email=req.getParameter("email");
		
		User u= new User();
		
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		
		req.setAttribute("bean",u);

		RequestDispatcher rd=req.getRequestDispatcher("view2.jsp");
	     rd.include(req,res);
			
}
}
