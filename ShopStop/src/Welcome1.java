

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Welcome1
 */
@WebServlet("/Welcome1")
public class Welcome1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      HttpSession s=request.getSession();
	      String user=(String)s.getAttribute("user");
	      out.println("Hello "+user);
	      out.println("Session Created Time :"+ s.getCreationTime());
	      out.println("Session Id :"+ s.getId());
	  
      out.println("The SESSION TIMEOUT period is" + s.getMaxInactiveInterval() + " seconds.");
      out.println("Now changing it to .5 minutes.<br><br>");
      int timeout=30;
      s.setMaxInactiveInterval(timeout);
      out.println("The SESSION TIMEOUT period is now " + s.getMaxInactiveInterval() + " seconds.");
      response.setHeader("Refresh", timeout+ ";URL=index.html");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
