<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
	
<title>Default tiles template</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<script src="${ctx }/static/plugins/layer/layer.js"></script>


<style type="text/css">
.leftMenu {
	height: 500px;
	width: 300px;
	vertical-align: text-top
}

.header {
	text-align: center;
}

.page {
	height: 50px;
	overflow-y: scroll;
	min-width: 100%;
	position: relative;
}

.mainContent {
	
}

.t_link {
	display: inline-block;
	*zoom: 1;
	*display: inline;
	margin: 0 6px;
	padding: 0 10px;
	height: 28px;
	line-height: 28px;
	background-color: #fff;
	border: 1px solid #e8e8e8;
	border-radius: 14px;
	font-size: 12px;
	color: #666;
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