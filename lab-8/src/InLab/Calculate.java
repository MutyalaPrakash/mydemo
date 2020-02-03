package InLab;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Calculate extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		
		int result=0;
		
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		
		int first=Integer.parseInt(req.getParameter("op1"));
		
		int second=Integer.parseInt(req.getParameter("op2"));
		
		String operator=req.getParameter("op");

		Record rec= new Record();
		
		rec.setFirst(first);
		rec.setSecond(second);
		
		if(operator.equals("add"))
		{
			result=first+second;
		}
		else if(operator.equals("sub"))
		{
			result=first-second;
		}
		else if(operator.equals("mul"))
		{
			result=first*second;
		}
		else if(operator.equals("div"))
		{
			result=first/second;
		}
		
	rec.setResult(result);
	
	req.setAttribute("bean",rec);
	 RequestDispatcher rd=req.getRequestDispatcher("view.jsp");
     rd.include(req,res);
		
		
	}

	

}
