<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes : NoteTaker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">

			<div class="col-12">

				<%
    				Session se=FactoryProvider.getFactory().openSession();
    				
    //--------------Below is HQL Hibernate Query for selecting all data from Entity:---------------
    				
    					Query q= se.createQuery("from Note");
    						List<Note> list=q.getResultList();
    						
    			//--------Now Use For-Each LOOP to fetch each note attribute--------------
    			
    			for(Note note:list)
    			{
    				
    		%>

				<div class="card mt-3" >
					<img class="card-img-top m-4" style="max-width:100px" src="img/notes.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text">
						<%=note.getContent() %>
						</p>
						<a href="#" class="btn btn-danger">Delete</a>
						<a href="#" class="btn btn-primary">Update</a>
					</div>
				</div>


				<% 		
    				//out.println(note.getId()+" :  "+note.getTitle()+"<br>");
    			}
    
    
    						se.close();
    
    %>


			</div>


		</div>

		<!-- Now fetching all data from Entity class -->




	</div>


</body>
</html>