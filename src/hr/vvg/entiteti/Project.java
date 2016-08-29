package hr.vvg.entiteti;

public class Project {
	
	private String projectName;
	private String projectCompany;
	
	public Project(String projectName, String projectCompany) {
		super();
		this.projectName = projectName;
		this.projectCompany = projectCompany;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectCompany() {
		return projectCompany;
	}

	public void setProjectCompany(String projectCompany) {
		this.projectCompany = projectCompany;
	}

}
