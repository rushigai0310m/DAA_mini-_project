package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connect.Connect;


@WebServlet("/userLogin")
public class userLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		 PrintWriter p = response.getWriter();
		 String user = request.getParameter("username");
		 String pass = request.getParameter("password");
		try {
			Connection con = Connect.myConnection() ;
			String sql = "SELECT * FROM usertable WHERE UserEmail = ? and UserPassword= ? ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			ResultSet x = ps.executeQuery();
			if (x.next()) {
				HttpSession sess = request.getSession();
				sess.setAttribute( "userID" , x.getInt(1));
				sess.setAttribute("userName", x.getString(2));
				sess.setAttribute("userEmail", x.getString(3));
				response.sendRedirect("select.jsp");
			} else {
				p.print("Incorrect Username or Password");
			}
		} catch (Exception e) {
			p.print(e.getMessage());
		}
	}

}
