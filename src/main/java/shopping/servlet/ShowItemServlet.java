package shopping.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shopping.bean.CategoryBean;
import shopping.bean.ItemBean;
import shopping.dao.DAOException;
import shopping.dao.ItemDAO;

/**
 * Servlet implementation class ShowItemServlet
 */
@WebServlet("/ShowItemServlet")
public class ShowItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("UTF-8");
			String action = request.getParameter("action");
			//ItemDAO dao = new ItemDAO();//
			
			if(action == null || action.length() == 0) {
				gotoPage(request,response, "/top.jsp");
				/*List<ItemBean> list = dao.findAll();
				request.setAttribute("items", list);
				gotoPage(request, response, "/top.jsp");*/
			}
			else if (action.equals("sort")) {
				String key = request.getParameter("key");
				int categoryCode = Integer.parseInt(request.getParameter("code"));
				ItemDAO dao = new ItemDAO();
				List<ItemBean> list;
				if(key.equals("price_asc")) {
					list = dao.sortPrice(true, categoryCode);
				} else {
					list = dao.sortPrice(false, categoryCode);
				}
			request.setAttribute("category", categoryCode);
			request.setAttribute("items", list);
			gotoPage(request, response, "/list.jsp");
			}
		} catch (DAOException e) {
			e.printStackTrace();
			request.setAttribute("message", "内部エラーが発生しました。");
			gotoPage(request, response, "/errInternal.jsp");
		}

		
		
		
		// TODO Auto-generated method stub
	try {
		String action = request.getParameter("action");
		if (action == null || action.length() == 0 || action.equals("top")) {
			gotoPage(request, response, "/top.jsp");
		} else if (action.equals("list")) {
			int categoryCode = Integer.parseInt(request.getParameter("code"));
			ItemDAO dao = new ItemDAO();
			List<ItemBean> list = dao.findByCategory(categoryCode);
			//Listをリクエストスコープに入れてJSPへフォワード
			request.setAttribute("items" , list);
			request.setAttribute("category" ,categoryCode);
			gotoPage(request, response, "/list.jsp");
			
		} else {
			request.setAttribute("message", "正しく操作してください");
			gotoPage(request, response, "/errInternal.jsp");
		}
	} catch (DAOException e) {
		e.printStackTrace();
		request.setAttribute("message", "内部エラーが発生しました。");
		gotoPage(request, response, "/errInternal.jsp");
	  }
	}
   private void gotoPage(HttpServletRequest request, 
		   HttpServletResponse response, String page) throws ServletException, 
           IOException {
	     RequestDispatcher rd = request.getRequestDispatcher(page);
	     rd.forward(request, response);
   }
   
   public void init() throws ServletException{
	   try {
		   //カテゴリー一覧は最初にアプリケーションスコープへ入れる
		   ItemDAO dao = new ItemDAO();
		   List<CategoryBean> list = dao.findAllCategory();
		   getServletContext().setAttribute("categories", list);
	   } catch (DAOException e) {
		   e.printStackTrace();
		   throw new ServletException();
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
