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
	
	
	private IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();
	
       
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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		if(username.isEmpty() || password.isEmpty())
		{
			out.append("<html>");
			out.append("<head>");
			
			out.append("<meta http-equiv='refresh' content='6;URL=index.html'>");
			
			
			out.append("<title> Missing username or password </title></head>");
			out.append("<body bgcolor = \"#f0f0f0\">");
			
			
			
			out.append("<p style='color:red;'>Please enter your username and password!</p>");
			out.append("<p style='color:red;'>You'll be shortly redirected to our home page ... </p>");
			
			out.append("</body>");
			out.append("</html>");
		}
		else
		{
			for (DisYouser dy: dyDatabase.getDisYouserList())
			{
			
				if(dy.getUserID().equals(username) && dy.getPassword().equals(password))
				{
				
					RequestDispatcher req = request.getRequestDispatcher("jsp/DisYouTopyProfile.jsp");
					req.forward(request, response);
	
					
					break;
				}
				else if (dy.getUserID().equals(username) && !dy.getPassword().equals(password))
				{

					out.append("<html>");
					out.append("<head>");
					
					out.append("<meta http-equiv='refresh' content='6;URL=index.html'>");
					
					
					out.append("<title> Wrong username or password </title></head>");
					out.append("<body bgcolor = \"#f0f0f0\">");
					
					
					
					out.append("<p style='color:red;'>Username or password incorrect! Please try again!</p>");
					out.append("<p style='color:red;'>You'll be shortly redirected to our home page ... </p>");
					
					out.append("</body>");
					out.append("</html>");
					
					//continue;
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
