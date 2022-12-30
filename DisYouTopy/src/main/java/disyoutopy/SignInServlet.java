package disyoutopy;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SignInServlet
 */

@WebServlet(SignInServlet.DIS_YOU_TOPY_PROFILE)
public class SignInServlet extends HttpServlet {
	static final String DIS_YOU_TOPY_PROFILE = "/DisYouTopyProfile";


	private static final long serialVersionUID = 1L;


	private IDisYouserDatabase dyDatabase = DisYouserDatabase.getDisYouserDatabase();


    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInServlet() {
        super();
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter out = response.getWriter();

		String username = request.getParameter("username");
		String password = request.getParameter("password");


		if(username.isEmpty() || password.isEmpty())
		{
			out.append("<html>");
			out.append("<head>");

			out.append("<meta http-equiv='refresh' content='6;URL=index.jsp'>");


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

					HttpSession session = request.getSession();
					session.setAttribute("username",username);
					out.append("<html>");
					out.append("<meta http-equiv='refresh' content='0.1;URL=jsp/DisYouTopyProfile.jsp'>");
					out.append("</html>");
					//RequestDispatcher req = request.getRequestDispatcher("jsp/DisYouTopyProfile.jsp");
					//req.forward(request, response);


					break;
				}
				else if (dy.getUserID().equals(username) && !dy.getPassword().equals(password))
				{

					out.append("<head>");

					out.append("<meta http-equiv='refresh' content='6;URL=index.jsp'>");


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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
