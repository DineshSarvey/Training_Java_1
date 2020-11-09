<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->
	<jsp:include page="header.jsp"/>
		<hr/>
		<div align=center>
			<h2>TRACK LOAN</h2>
			<form action="user?action=displaystatus" method="post">
				<div>
					<div><label for="applno">Enter Your Application Number please</label> </div>
					<div><input type="text" id="applno" name="applno"> </div>
				</div>
				<div>
					<div><input type="submit" value="Search"> </div>
				</div>
			</form>
		</div>
	<hr/>
	<jsp:include page="footer.jsp"/>
</body>
</html>