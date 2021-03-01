<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
<div class="container">
	<%@include file="navbar.jsp"%>
	<br>
	<h1>Please fill your Note Detail</h1>

	<!-- this is addNotes Form -->
	<form action="SaveNoteServlet" method="post">



		<!-- ........Title FIeld..... -->
		<div class="form-group">
			<label for="title">Note title</label> 
			<input required type="text"
			name="title"
				class="form-control" id="title" aria-describedby="emailHelp"
				placeholder="Enter notes-title here">
		</div>


		<!-- ........Content FIeld..... -->

		<div class="form-group">
			<label for="content">Note Content</label>

			<textarea required id="content"
				name="content" placeholder="Enter your content here"
				class="form-control" style="height: 300px">
    </textarea>
		</div>



		<!-- ........Add Button FIeld..... -->
		<br>
		<div class="container text-center">
			<button type="submit" class="btn btn-primary">ADD</button>
		</div>

	</form>

</div>
</head>
<body>

</body>
</html>