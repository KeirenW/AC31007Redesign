package BackEnd;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginManager")
public class LoginManager extends HttpServlet {
	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		
		Database db = new Database();
		db.connect();
		String loginResult = db.checkLogin(username, password);
		
		boolean loggedIn = false;
		Main.Role perms = Main.Role.GUEST;
		
		String[] sqlResults = {db.getexamsetter(loginResult), db.getinternalmod(loginResult), db.getexamvetcommit(loginResult), db.getexternal(loginResult), db.getoffice(loginResult)};
		
		for (int i = 0; i < sqlResults.length; i++) {
			if(sqlResults[i].equals("0")) {
				loggedIn = true;
				switch(i) {
					case 0:
						perms = Main.Role.EXAMSETTER;
						break;
					case 1:
						perms = Main.Role.INTERNAL;
						break;
					case 2:
						perms = Main.Role.COMMITTEE;
						break;
					case 3:
						perms = Main.Role.EXTERNAL;
						break;
					case 4:
						perms = Main.Role.OFFICE;
						break;
				}
			}
		}
		
		if(loginResult.equals("1")){
			perms = Main.Role.ADMIN;
		}
		
		Cookie login = new Cookie("login", String.valueOf(loggedIn));
		Cookie credentials = new Cookie("user", loginResult);
		Cookie permissions = new Cookie("permissions", perms.toString() );
		
		login.setMaxAge(60*60*24);
		credentials.setMaxAge(60*60*24);
		permissions.setMaxAge(60*60*24);
		
		response.addCookie(login);
		response.addCookie(credentials);
		response.addCookie(permissions);
		
		response.sendRedirect("index.jsp");
	}
	
	/**
	 * Handles the HTTP GET method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	/**
	 * Handles the HTTP POST< method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
}
