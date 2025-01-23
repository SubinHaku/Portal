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
import java.sql.SQLException;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    // doget is the method to what You want to get , i want to get Signuppage to popup when i click the signup link
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.getRequestDispatcher("signuppage.jsp").forward(request , response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Namefield = request.getParameter("name");
		String Passwordfield = request.getParameter("pass");
		String Repasswordfield = request.getParameter("repass");
		
		// JDBC Connectivity
		
		String url = "jdbc:mysql://localhost:3306/portal";
		String username="root";
		String password="root";
		String query = "Insert into info(Name,Password)value(?,?)";		

		if(Namefield != null && !Namefield.trim().isEmpty() && Passwordfield.equals(Repasswordfield)) {

		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				
				PreparedStatement ps = con.prepareStatement(query);
				
				ps.setString(1, Namefield);
				ps.setString(2, Passwordfield);
				
				
				
				int rowsInserted= ps.executeUpdate();
				
				if(rowsInserted>0) {
					request.setAttribute("Sucessful", "SignupSucessfull");
					request.getRequestDispatcher("signuppage.jsp").forward(request, response);
					
				}else {
					request.setAttribute("fail", "Singup failed! Try again");
					request.getRequestDispatcher("signuppage.jsp").forward(request, response);
				}
				
				
				
			}catch(ClassNotFoundException e) {
				request.setAttribute("classerror", "Class not found");
			}catch(SQLException e) {
				request.setAttribute("drivererror", "Driverload Unsuccess");
			}
		
		
		
	}else {
		
		request.setAttribute("loginfail", "Please Enter the valid Credentials");
		request.getRequestDispatcher("signuppage.jsp").forward(request, response);
		
	}
	}

}























