<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

<!DOCTYPE html>
<html>
<head>
<title><bean:message key="welcome.title" /></title>
<link rel="stylesheet" href="styles.css" type="text/css"></link>
</head>
<body>
	<div class="space"></div>

	<table class="listing">
		<tr>
			<th><bean:message key="label.title" /></th>
			<th><bean:message key="label.auth_last" /></th>
			<th><bean:message key="label.auth_first" /></th>
			<th><bean:message key="label.isbn" /></th>
		</tr>

		<logic:iterate name="books" id="books">

			<tr>
				<td class="list_td"><bean:write name="books" property="title" /></td>
				<td class="list_td"><bean:write name="books" property="auth_last" /></td>
				<td class="list_td"><bean:write name="books" property="auth_first" /></td>
				<td class="list_td"><bean:write name="books" property="isbn" /></td>
			</tr>

		</logic:iterate>
	</table>

</body>
</html>