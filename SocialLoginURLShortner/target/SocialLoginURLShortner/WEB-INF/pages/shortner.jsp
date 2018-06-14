<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>SocialLogin URL Shortner</title>
</head>

<body>
	<h2>Long URL information</h2>
	<form action="<c:url value='../services/getShort' />" name='urlForm'
		method='POST'>
		
		<table>

			<th>LongURL</th>
			<td><input type="text" id="longURL" name="longURL" /></td>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
</body>

</html>