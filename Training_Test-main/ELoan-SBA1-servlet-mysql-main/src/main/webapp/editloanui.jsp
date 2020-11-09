<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page import="com.iiht.evaluation.eloan.model.LoanInfo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOAN EDIT PROCESSING</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<% LoanInfo loan = (LoanInfo) request.getAttribute("loan"); %>
	
	<div align="right"><a href="userhome1.jsp">User Home</a></div>
	<div align="right"><a href="index.jsp">Logout</a></div>
	<div align=center>
	<hr/>
	<h2>Please Edit your loan and update it</h2>
		<form action="user?action=editLoanProcess" method="post">
			<div>
				<div><label for="applno">Your application num :</label> </div>
				<div><input type="text" id="applno" name="applno" value="<%= loan.getApplno() %>" readonly> </div>
			</div>
			<div>
				<div><label for="doa">Loan application date</label> </div>
				<div><input type="date" id="doa" name="doa" value="<%= loan.getDoa() %>" readonly> </div>
			</div>
			<div>
				<div><label for="purpose">Enter purpose</label> </div>
				<div><input type="text" id="purpose" name="purpose" value="<%= loan.getPurpose() %>"> </div>
			</div>
			<div>
				<div><label for="amtrequest">Enter amount</label> </div>
				<div><input type="text" id="amtrequest" name="amtrequest" value="<%= loan.getAmtrequest() %>"> </div>
			</div>
			<div>
				<div><label for="bstructure">Enter business structure</label> </div>
				<div><input type="text" id="bstructure" name="bstructure" value="<%= loan.getBstructure() %>"> </div>
			</div>
			<div>
				<div><label for="bindicator">Enter business indicator</label> </div>
				<div><input type="text" id="bindicator" name="bindicator" value="<%= loan.getBindicator() %>"> </div>
			</div>
			<div>
				<div><label for="taxpayer">Are you a taxpayer</label> </div>
				<div><input type="text" id="taxpayer" name="taxpayer" value="<%= loan.getTaxpayer() %>"> </div>
			</div>
			<div>
				<div><label for="address">Enter address</label> </div>
				<div><input type="text" id="address" name="address" value="<%= loan.getAddress() %>"> </div>
			</div>
			<div>
				<div><label for="email">Enter email</label> </div>
				<div><input type="email" id="email" name="email" value="<%= loan.getEmail() %>"> </div>
			</div>
			<div>
				<div><label for="mobile">Enter mobile number</label> </div>
				<div><input type="text" id="mobile" name="mobile" value="<%= loan.getMobile()%>"> </div>
			</div>
			<div>
				<div><label for="mobile">Loan status</label> </div>
				<div><input type="text" id="status" name="status" value="<%= loan.getStatus()%>" readonly> </div>
			</div>
			<div>
				<div><input type="submit" value="Apply" onclick="success()"> </div>
			</div>
		</form>
	</div>
	<hr/>

<jsp:include page="footer.jsp"/>

<script>
	function success() {
	  alert("Loan is Updated Successfully");
	}
</script>

</body>
</html>