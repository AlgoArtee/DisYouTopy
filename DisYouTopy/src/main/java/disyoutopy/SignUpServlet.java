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

@WebServlet("/SignUp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
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

		
		if(firstName != null && firstName.length() != 0 && lastName != null && lastName.length() != 0 &&
				street != null && street.length() != 0 && city != null && city.length() != 0 &&
				postalCode != null && postalCode.length() != 0 && email != null && email.length() != 0 &&
				birthDate != null && birthDate.length() != 0 && username != null && username.length() != 0 &&
				password != null && password.length() != 0)
			{
				
				for (DisYouser dy: dyDatabase.getDisYouserList())
				{
				
					if(dy.getUserID().equals(username))
					{
						
						
						out.append("<html>");
						out.append("<head>");
						
						out.append("<meta http-equiv='refresh' content='3;URL=html/signUp.html'>");
						
						
						out.append("<title> Missing Data! </title></head>");
						out.append("<body bgcolor = \"#f0f0f0\">");
						
						
						
						out.append("<p style='color:red;'>User name already in use!</p>");
						
						out.append("</body>");
						out.append("</html>");
						
						
						break;
					}
					else
					{
						
						// Add User
						DisYouser new_dy = new DisYouser(firstName, lastName, street + city + postalCode, email, birthDate, username, password);
						
						dyDatabase.addDisYouser(new_dy);
						
						
						RequestDispatcher req = request.getRequestDispatcher("jsp/SignUp.jsp");
						req.forward(request, response);
						break;
					}
				
				}
			
			
			}
			else
			{
				out.append("<html>");
				out.append("<head>");
				
				out.append("<meta http-equiv='refresh' content='3;URL=html/signUp.html'>");
				
				
				out.append("<title> Missing Data! </title></head>");
				out.append("<body bgcolor = \"#f0f0f0\">");
				
				
				
				out.append("<p style='color:red;'>Please enter your Data!</p>");
				
				out.append("</body>");
				out.append("</html>");
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
