package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("loginpage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Namefield= request.getParameter("name");
		String Passwordfield=request.getParameter("pass");
		
		//JDBC Connection
		
		String url = "jdbc:mysql://localhost:3306/portal";
		String username="root";
		String password="root";
		String query = "select * from info where Name =? and Password=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1,Namefield);
			ps.setString(2,Passwordfield);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				
				
				request.setAttribute("username", Namefield);
				
				  request.getRequestDispatcher("loginportal.jsp").forward(request, response);
			}else {
				request.setAttribute("incorrect", "Sorry Your are not in our Database . Please Signup");
				request.getRequestDispatcher("loginpage.jsp").forward(request, response);
			}
			
			
			
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
	        request.setAttribute("error", "Something went wrong! Please try again.");
	        request.getRequestDispatcher("loginpage.jsp").forward(request, response);
		}
		
	}

}
