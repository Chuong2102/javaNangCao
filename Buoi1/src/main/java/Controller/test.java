package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String aa = request.getParameter("num1");
		String bb = request.getParameter("num2");
		
		String dau = request.getParameter("selectFomular");
		
		if(aa == null && bb == null)
			response.sendRedirect("congtrunhanchia.jsp");
		else {
			long a = Long.parseLong(aa);
			long b = Long.parseLong(bb);
			long kq = 0;
			
			if(request.getParameter("result") != null) {
				if(dau.equals("add"))
					kq = a + b;
				else if(dau.equals("sub"))
					kq = a - b;
				else if(dau.equals("mulp"))
					kq = a * b;
				else if(dau.equals("divide"))
					if(b != 0)
						kq = a / b;
					else kq = 0;
				
				request.setAttribute("a", a);
				request.setAttribute("b", b);
				request.setAttribute("kq", kq);
				
				RequestDispatcher rd = request.getRequestDispatcher("congtrunhanchia.jsp");
				rd.forward(request, response);
			}
				
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
