package disyoutopy;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class SignInServlet
 */

@WebServlet("/SignIn")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private IDisYouserDatabase dyDatabase;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter out = response.getWriter();
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String postalCode = request.getParameter("postalCode");
		String email = request.getParameter("email");
		String birthDate = request.getParameter("birthDate");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		if(firstName.isEmpty() || lastName.isEmpty() || username.isEmpty() || 
				password.isEmpty() || email.isEmpty())
		{
			RequestDispatcher req = request.getRequestDispatcher("html/signUp.html");
			req.include(request, response);
		}
		else
		{
			for (DisYouser dy: dyDatabase.getDisYouserList())
			{
			
				if(dy.getUserID().equals(username))
				{
					//RequestDispatcher req = request.getRequestDispatcher("html/signUp.html");
					//req.forward(request, response);
					out.println("<meta http-equiv='refresh' content='3;URL=index.jsp'>");//redirects after 3 seconds
					out.println("<p style='color:red;'>User name already in use!</p>");
					break;
				}
				else
				{
					RequestDispatcher req = request.getRequestDispatcher("register_2.jsp");
					req.forward(request, response);
				}
			
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
