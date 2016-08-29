<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="hr.vvg.entiteti.User"%>
<%@ page import="hr.vvg.entiteti.Project"%>

   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<%=response.encodeURL(request.getContextPath() + "/css/style.css") %>" />
<title>Prva vježba</title>
</head>
<body>

  	<center>
  	
  		<div id="misoDiv" style="border-width: 0px 0px 0px 0px; border-style: solid; border-color: #600;">
  			
  			<!--  http://www.codingforums.com/dom-and-json-scripting/322227-dynamically-change-background-image-html-tag.html -->
  			<script type="text/javascript"> 
		(function() { 
		    var images = ['./images/jasmin2.jpg', './images/milo.jpg', './images/miso.jpg']; 
		    var body = window.document.body; 
		    var counter = 0; 
		    window.setInterval(function() { 
		        if( counter >= images.length ) { 
		            counter = 0; 
		        }; 
		        var image = "url(" + images[counter] + ")"; 
		        counter++; 
		        misoDiv.style.backgroundImage = image; 
		    }, 2000); 
		})(); 
	</script> 
  		
  		</div>
  	
  	
	  	<div id="mainDiv" style="width: 90%; border-width: 0px 0px 0px 0px; border-style: solid; border-color: #600;" align="center">
			<form action="<%= response.encodeURL(request.getContextPath() + "/showTask") %>" method="POST">
				<h1>Kreiranje novog zadatka</h1>
			
				<table border="0" style="font-family: Arial; font-size: 20px;">
				
					<tr>
					
						<th>
						
						Korisnik: 
						
						</th>
					
						<td>
							<select style="width: 143px" name="selectedUser">
								<%
								@SuppressWarnings("unchecked")
								 List<User> userList = ((List<User>)request.getAttribute("userList"));
								
								for (User user: userList){
									
									String userValue = user.getUserFirstName() + " " + user.getUserLastName();
									out.write("<option value='" + user.getUserId() + "'>" + userValue + "</option>");
								}
								%>
							</select>
						</td>
					</tr>
					<tr>
					
					
					<th>Projekt: </th>
					
					<td>
						<select style="width: 143px" name="selectedProject">
						<%
						@SuppressWarnings("unchecked")
						List<Project> projectList = ((List<Project>)request.getAttribute("projectList"));
						
						for (Project project: projectList){
							
							String projectValue = project.getProjectName();
							out.write("<option value='" + projectValue + "'>" + projectValue + "</option>");
						}
						%>
						</select>
					</td>
					
					</tr>
				
					<tr>
					
						<th>
						Opis zadatka:
						</th>
						
						<td>
							
							 <textarea name="taskDescription"></textarea> 
							
						</td>
					
					</tr>
					
					<tr>
					
						<th>
							
							Procjena (h):
						
						</th>
					
						<td>
							<select style="width: 40px" name="selectedTime">
							<%
							
							for (int i=1; i<9; i++){

								out.write("<option value='" + i + "'>" + i + "</option>");
							}
							%>
						
							</select>
						
						</td>
					
					
					</tr>
					
					<tr>
					
						<th>
						
						</th>
					
						<td>
							
							<input type="submit" name="saveButton" value="Spremi">
							
						</td>
					</tr>
				
				</table>
			</form>

		</div>
	</center>

</body>
</html>