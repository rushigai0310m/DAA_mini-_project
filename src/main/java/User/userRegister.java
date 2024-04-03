package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connect.Connect;


@WebServlet("/userRegister")
public class userRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter p = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("mail") ;
		String pass = request.getParameter("password");
		String mobile = request.getParameter("mobile") ;
		String address = request.getParameter("address"); 
		try {
			Connection con = Connect.myConnection();
			String sql = "INSERT INTO usertable (UserName , UserEmail , UserPhone , UserPassword , UserAddress) VALUES(?,?,?,?,?)" ;
			PreparedStatement ps = con.prepareStatement(sql) ;
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, mobile);
			ps.setString(4, pass);
			ps.setString(5, address);
			int x = ps.executeUpdate();
			if(x==1) {
				response.sendRedirect("Login.html");
				}else {
				p.print("Not Insert");
			}
		}catch(Exception e) {
			p.print(e.getMessage()) ;
		}
	}

}
