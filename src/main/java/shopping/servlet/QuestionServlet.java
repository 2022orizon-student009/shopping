package shopping.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QuestionServlet")
public class QuestionServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String howoften = request.getParameter("howoften");
		String[] why = request.getParameterValues("why");
		String reccomend = request.getParameter("reccomend");
		
		//String selectedHowoften;
		if (howoften ==null) {
			//selectedHowoften = "選択されていません";
		    request.setAttribute("message", "1の質問の回答は必須です");			
		    RequestDispatcher rd = request.getRequestDispatcher("/errorQuestion.jsp");
		    rd.forward(request, response);
		    return;}
		
		//String selectedWhy;
		if (why ==null) {
			//selectedHowoften = "選択されていません";
		    request.setAttribute("message", "2の質問の回答は必須です");			
		    RequestDispatcher rd = request.getRequestDispatcher("/errorQuestion.jsp");
		    rd.forward(request, response);
		    return;}
		  
		if (reccomend ==null) {
			//selectedHowoften = "選択されていません";
		    request.setAttribute("message", "3の質問の回答は必須です");			
		    RequestDispatcher rd = request.getRequestDispatcher("/errorQuestion.jsp");
		    rd.forward(request, response);
		    return;}
	
		RequestDispatcher rd = request.getRequestDispatcher("/Present.jsp");
		rd.forward(request, response);
	}
	}
	


