package hr.vvg.entiteti;

public class Task {
	
	private User user;
	private Project project;
	private String taskDescription;
	private String estimatedTime;
	
	public Task(User user, Project project, String taskDescription, String estimatedTime) {
		super();
		this.user = user;
		this.project = project;
		this.taskDescription = taskDescription;
		this.estimatedTime = estimatedTime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	public String getEstimatedTime() {
		return estimatedTime;
	}

	public void setEstimatedTime(String estimatedTime) {
		this.estimatedTime = estimatedTime;
	}

}
