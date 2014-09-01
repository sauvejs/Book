<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>

<html:html locale="true">
<head>
<title><bean:message key="welcome.title" /></title>
<link rel="stylesheet" href="styles.css" type="text/css"></link>
<html:base />
</head>
<body>


	<div class="space"></div>

	<table class="listing">
		<tr>
			<td><html:link forward="new">Enter A New Book</html:link></td>
			<td>&nbsp;</td>
			<td><html:link forward="list">View Full List of Books</html:link>
			</td>
		</tr>
	</table>




</body>
</html:html>
