package shopping.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import shopping.bean.CartBean;
import shopping.bean.CustomerBean;
import shopping.dao.DAOException;
import shopping.dao.OrderDAO;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	request.setCharacterEncoding("UTF-8");
	
	HttpSession session = request.getSession(false);
	if (session == null) {
		request.setAttribute("message", 
		"セッションが切れています。もう一度トップページより操作してください。");
		gotoPage(request, response, "/errInternal.jsp");
		return;
	}
	CartBean cart = (CartBean)session.getAttribute("cart");
	if (cart == null) {
		request.setAttribute("message", "正しく操作してください");
		gotoPage(request, response, "/errInternal.jsp");
		return;
	}
	
	try {
		String action = request.getParameter("action");
		if (action == null || action.length() == 0 || action.equals("input_customer")) {
			gotoPage(request, response, "/customerInfo.jsp");
		} else if (action.equals("confirm")) {
			String name =request.getParameter("name");
			String address = request.getParameter("address");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email");
			if(name == null || name.length() == 0 || address == null || address.length() == 0 || tel == null || tel.length() == 0 || email == null || email.length() == 0 ) {
				request.setAttribute("message1", "お客様情報が入力されていません。");
				gotoPage(request, response, "/customerInfo.jsp");
				return;
				
				
			}else {
				
		
				try {
					@SuppressWarnings("unused")
					int telp = Integer.parseInt(tel);
				}catch(NumberFormatException e) {
					request.setAttribute("message2", "電話番号は数値を入力してください。");
					gotoPage(request, response, "/customerInfo.jsp");
					return;
				}
				CustomerBean bean = new CustomerBean();
				bean.setName(request.getParameter("name"));
				bean.setAddress(request.getParameter("address"));
				bean.setTel(request.getParameter("tel"));
				bean.setEmail(request.getParameter("email"));
				session.setAttribute("customer", bean);
				gotoPage(request, response, "/confirm.jsp");
			}
			
		
				
		} else if (action.equals("order")) {
			CustomerBean customer = (CustomerBean)session.getAttribute("customer");
			if(customer == null) {
				request.setAttribute("message", "正しく操作してください。");
				gotoPage(request, response, "/errInternal.jsp");
				return;
		}
			
			OrderDAO order = new OrderDAO();
			int orderNumber = order.saveOrder(customer, cart);
			session.removeAttribute("cart");
			session.removeAttribute("customer");
			request.setAttribute("orderNumber", Integer.valueOf(orderNumber));
			gotoPage(request, response, "/order.jsp");
		} else {
			request.setAttribute("message", "正しく操作してください。");
			gotoPage(request, response, "/errInternal.jsp");
		}
	} catch (DAOException e) {
		e.printStackTrace();
		request.setAttribute("message", "内部エラーが発生しました。");
		gotoPage(request, response, "/errInternal.jsp");
	   }
	}
	
	private void gotoPage(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, 
	                     IOException {
		RequestDispatcher rd = request.getRequestDispatcher(page);
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

/*CustomerBean bean = new CustomerBean();
bean.setName("name");
bean.setAddress("address");
bean.setTel("tel");
bean.setEmail("email");
session.setAttribute("customer", bean);
gotoPage(request, response, "/confirm.jsp");*/

/*CustomerBean bean = new CustomerBean();
bean.setName(request.getParameter("name"));
bean.setAddress(request.getParameter("address"));
bean.setTel(request.getParameter("tel"));
bean.setEmail(request.getParameter("email"));
session.setAttribute("customer", bean);
gotoPage(request, response, "/confirm.jsp");*/
