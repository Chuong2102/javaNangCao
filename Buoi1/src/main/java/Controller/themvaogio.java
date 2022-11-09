package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.loaibean;
import bo.giohangbo;
import bo.loaibo;

/**
 * Servlet implementation class themvaogio
 */
@WebServlet("/themvaogio")
public class themvaogio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public themvaogio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		String maSach = request.getParameter("ms");
		String tenSach = request.getParameter("ts");
		long gia = Long.parseLong(request.getParameter("gia"));
		
		giohangbo gh;
		
		if(session.getAttribute("gio") == null){
			gh = new giohangbo();
			session.setAttribute("gio", gh);
		}
		
		gh = (giohangbo)session.getAttribute("gio");
		
		gh.Them(maSach, tenSach, gia, (long)1);
		session.setAttribute("gio", gh);
		
		// Lay loai sach
		//
		loaibo lbo = new loaibo();
       	ArrayList<loaibean> dsloai = lbo.getloai();
       	
       	request.setAttribute("dsloai", dsloai);
       	
       	// Hien so sach trong gio
       	//
       	long tongSach = 0;

    	if(session.getAttribute("gio") != null){
    		
    		tongSach = gh.ds.size();
    	}
       	
    	request.setAttribute("tongsach", tongSach);
    	//
       	RequestDispatcher rd = request.getRequestDispatcher("htgio.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
