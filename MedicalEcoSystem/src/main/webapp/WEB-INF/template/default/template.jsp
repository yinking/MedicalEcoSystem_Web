<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<title>Default tiles template</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<style type="text/css">
.leftMenu {
	height: 500px;
	width: 300px;
	vertical-align: text-top
}

.header {
	text-align: center;
	background-color: #BDBDAA;
}

.page {
	min-height: 100%;
	min-width: 100%;
	position: relative;
}

.mainContent {
	background-color: #E6E6E6;
}
</style>
</head>
<body>



	<table style="font-family: Arial" class="page">
		<tr>
			<td class="header" colspan="2"><tiles:insertAttribute
					name="header" /></td>
		</tr>
		<tr>
			<td class="leftMenu"><tiles:insertAttribute name="menu" /></td>

			<td class="mainContent"><tiles:insertAttribute name="body" /></td>

		</tr>
		<tr>
			<td class="footer"><tiles:insertAttribute name="footer" /></td>

		</tr>
	</table>



</body>
</html>