<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body >

<!--
	write the html code to accept laon info from user and send to placeloan servlet
-->
	<jsp:include page="header.jsp"/>
		<hr/>
		<div align=center>
			<h2>Applying for a new loan?</h2>
			<h3>Enter Below Details</h3>
			<form action="user?action=placeloan" method="post">
				<div>
					<div><label for="purpose">Purpose</label> </div>
					<div><input type="text" id="purpose" name="purpose"> </div>
				</div>
				<div>
					<div><label for="doa">Loan application Date</label> </div>
					<div><input type="date" id="doa" name="doa" readonly> </div>
				</div>
				<div>
					<div><label for="amtrequest">Amount Required</label> </div>
					<div><input type="text" id="amtrequest" name="amtrequest"> </div>
				</div>
				<div>
					<label for="bstructure">Select Business Structure:</label>
                                             <select name="bstructure" id="bstructure">
                                                <option value="Individual">Individual</option>
                                                <option value="Organization">Organization</option>
                                             </select>
                                              <br><br>
					
				</div>

				<div>
					<label for="bindicator">Select Business Indicator:</label>
                                             <select name="bindicator" id="bindicator">
                                                <option value="Salaried">Salaried</option>
                                                <option value="Business">Business</option>
                                             </select>
                                              <br><br>
					
				</div>
				<div>
					<label for="tPayer">Tax Payer:</label>
                                             <select name="taxpayer" id="taxpayer">
                                                <option value="Yes">Y</option>
                                                <option value="No">N</option>
                                             </select>
                                              <br><br>
					
				</div>
				<div>
					<div><label for="address">Address</label> </div>
					<div><input type="text" id="address" name="address"> </div>
				</div>
				<div>
					<div><label for="email">eMailId</label> </div>
					<div><input type="email" id="email" name="email"> </div>
				</div>
				<div>
					<div><label for="mobile">Mobile Number</label> </div>
					<div><input type="text" id="mobile" name="mobile"> </div>
				</div>
				<div>
					<div><input type="submit" value="Apply" onclick="success()"> </div>
				</div>
			</form>
		</div>
	<hr/>
	<jsp:include page="footer.jsp"/>
</script>

<script>
document.getElementById('doa').value = new Date().toISOString().substring(0, 10);
	function success() {
	  alert("Your Application is Submitted Successfully!!!");
	}
</script>
</body>
</html>