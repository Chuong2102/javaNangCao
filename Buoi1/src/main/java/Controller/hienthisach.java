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
import bean.sachbean;
import bo.giohangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class hienthisach
 */
@WebServlet("/hienthisach")
public class hienthisach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hienthisach() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		// Lay loai sach
		//
		loaibo lbo = new loaibo();
       	ArrayList<loaibean> dsloai = lbo.getloai();
       	
       	// Lay ds sach
       	//
       	sachbo sbo=new sachbo();
      	ArrayList<sachbean> dssach = sbo.getSach();
      	
      	// Phan loai va tim kiem
      	String ml = request.getParameter("ml");
      	String key = request.getParameter("txttk");
      	
      	if(ml != null)
      		dssach = sbo.TimMa(ml);
      	else
      		if(key != null)
      			dssach = sbo.Tim(key);
       	
       	request.setAttribute("dsloai", dsloai);
       	request.setAttribute("dssach", dssach);
       	
       	// Hien so sach trong gio
       	//
       	long tongSach = 0;

    	if(session.getAttribute("gio") != null){
    		giohangbo gh;
    		gh=	
    		(giohangbo)session.getAttribute("gio");
    		tongSach = gh.ds.size();
    	}
       	
    	request.setAttribute("tongsach", tongSach);
    	
    	//
       	RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
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
