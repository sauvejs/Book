<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><bean:message key="welcome.title" /></title>
</head>
<script type="text/javascript">
	function reset() {
		document.getElementsByName("title")[0].value = "";
		document.getElementsByName("auth_last")[0].value = "";
		document.getElementsByName("auth_first")[0].value = "";
		document.getElementsByName("isbn")[0].value = "";
	}
	window.onload = reset;
</script>
<body>
	<div style="padding-top: 50px"></div>
	<html:form action="/Save" focus="title">


		<table style="margin-left: auto;margin-right: auto;">
			<tr>
				<td><bean:message key="label.title" />:</td>
				<td><html:text property="title" /></td>
			</tr>
			<tr>
				<td><bean:message key="label.auth_last" />:</td>
				<td><html:text property="auth_last" /></td>
			</tr>
			<tr>
				<td><bean:message key="label.auth_first" />:</td>
				<td><html:text property="auth_first" /></td>
			</tr>
			<tr>
				<td><bean:message key="label.isbn" />:</td>
				<td><html:text property="isbn" /></td>
			</tr>
			<tr>
				<td colspan="2"><html:submit /></td>
			</tr>
			
		</table>


		
	</html:form>
</body>
</html>