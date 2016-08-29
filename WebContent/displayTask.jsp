<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="hr.vvg.entiteti.Task"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=response.encodeURL(request.getContextPath() + "/css/style.css") %>" />
<title>Prva vježba</title>
</head>
<body>

	<center>

		<div>
			<h1 id="displayTitle">Prikaz novog zadatka</h1>
		
			<h2>Podaci o legendi</h2>

			
			<table id="table1" border="1">
			
					<%
					
					Task task = (Task)request.getAttribute("task");
					
					%>
				
				<tr>
				
					<th>Ime</th>
					<th>Prezime</th>
					<th>Korisničko ime</th>
					
				</tr>
				
				<tr>

					<td><% out.write(task.getUser().getUserFirstName()); %></td>
					
					<td><% out.write(task.getUser().getUserLastName()); %></td>
					
					<td><% out.write(task.getUser().getUserName()); %></td>
					
				</tr>
				
			</table>
			
			</div>
			
			
			<div>
			
			<h2>Legendarni albumi</h2>
			
			<table id="table1" border="1">
				
				<tr>
				
					<th>Album</th>
					<th>Izdavač</th>
				
				</tr>
				
				<tr>
	
					<td><% out.write(task.getProject().getProjectName()); %></td>
						
					<td><% out.write(task.getProject().getProjectCompany()); %></td>

				</tr>
				
			</table>
			
			</div>
			
			
			<div>
			
			<h2>Opis projekta</h2>
			
			<table id="table1" border="1">
				
				<tr>
				
					<th>Opis projekta</th>
					<th>Procjena trajanja (h)</th>
				
				</tr>
				
				<tr>	
						
					<td><% out.write(task.getTaskDescription()); %></td>
						
					<td><% out.write(task.getEstimatedTime()); %></td>
				
				</tr>
			
			</table>
			
			</div>
			
			<form action="<%= response.encodeURL(request.getContextPath() + "/showTask") %>" method="GET">
			
				<input type="submit" name="saveButton" value="Povratak">
			
			</form>
			
			<button type="button" name="back" onclick="history.back()">back</button>

	</center>

</body>
</html>