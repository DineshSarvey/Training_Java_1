<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Application</title>
</head>
<body>
	<!-- read the application number to edit from user and send to 
	     user controller to edit info
	-->
	<jsp:include page="header.jsp"/>
		<hr/>
		<div align=center>
			<h2>Edit Loan Information</h2>
			<form action="user?action=editloan" method="post">
				<div>
					<div><label for="applno">Enter Application number</label> </div>
					<div><input type="text" id="applno" name="applno"> </div>
				</div>
				<div>
					<div><input type="submit" value="Edit"> </div>
				</div>
			</form>
		</div>
		<hr/>
	<jsp:include page="footer.jsp"/>
</body>
</html>