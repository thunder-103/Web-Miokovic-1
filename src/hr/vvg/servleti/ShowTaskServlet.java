package hr.vvg.servleti;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hr.vvg.entiteti.Project;
import hr.vvg.entiteti.Task;
import hr.vvg.entiteti.User;

/**
 * Servlet implementation class ShowTaskServlet
 */
@WebServlet("/showTask")
public class ShowTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowTaskServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<User> userList = new ArrayList<>();
		
		userList = createUserList(userList);
		
		request.setAttribute("userList", userList);
		
		
		List<Project> projectList = new ArrayList<>();

		projectList = createProjectList(projectList);
		
		request.setAttribute("projectList", projectList);
		
		ServletContext sc = getServletContext();
		
	    RequestDispatcher rd = sc.getRequestDispatcher("/createTask.jsp");

	    rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		
		List<User> userList = new ArrayList<>();
		
		userList = createUserList(userList);
		
		String selectedUser = request.getParameter("selectedUser");
		
		Integer idUser = Integer.parseInt(selectedUser);
		
		User selectedObjectUser = null;
		
		for(User user: userList) {
			
			if(user.getUserId().equals(idUser)){
				
				selectedObjectUser = user;
				
			}
			
		}
		
		List<Project> projectList = new ArrayList<>();

		projectList = createProjectList(projectList);
		
		String selectedProject = request.getParameter("selectedProject");
		
		Project selectedObjectProject = null;
		
		for(Project project: projectList) {
			
			if(project.getProjectName().equals(selectedProject)){
				
				selectedObjectProject = project;
				
			}
			
		}
		
		String taskDescription = request.getParameter("taskDescription");
		
		String selectedTime = request.getParameter("selectedTime");
		
		Task task = new Task(selectedObjectUser, selectedObjectProject, taskDescription, selectedTime);
		
		request.setAttribute("task", task);
		
		ServletContext sc = getServletContext();
		
	    RequestDispatcher rd = sc.getRequestDispatcher("/displayTask.jsp");

	    rd.forward(request, response);

		
	}
	
	private List<User> createUserList(List<User> userList) {
		
		userList.add(new User(1, "jstar", "Jasmin", "Stavros" ));
		
		userList.add(new User(2, "mhrni", "Milo", "Hrniæ" ));
		
		userList.add(new User(3, "mkova", "Mišo", "Kovaè" ));
		
		return userList;
		
	}
	
	private List<Project> createProjectList(List<Project> projectList) {
		
		projectList.add(new Project("Umoran", "Croatia Records"));
		
		projectList.add(new Project("Konji bijeli", "Menart"));
		
		projectList.add(new Project("Uvijek ista", "Jugoton"));
		
		return projectList;
		
	}

}
