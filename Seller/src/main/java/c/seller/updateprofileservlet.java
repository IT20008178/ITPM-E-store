 package c.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet("/updateprofileservlet")
public class updateprofileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("sid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		String category = request.getParameter("category");
		
		boolean isTrue;
		isTrue = SellerDButil.updateprofile(id, name, email, phone, username, password, category);
		
		if(isTrue == true) {
			JOptionPane.showMessageDialog(null, "update successfully!");
			List<Seller> selDetails = SellerDButil.getSellerDetails(id);
			request.setAttribute("selDetail", selDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("selleraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Seller> selDetails = SellerDButil.getSellerDetails(id);
			request.setAttribute("selDetails", selDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
