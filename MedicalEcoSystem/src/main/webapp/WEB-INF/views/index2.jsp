<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>







<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />



<script src="${ctx }/static/js/jquery-confirm.min.js"
	type="text/javascript"></script>

<link href="${ctx }/static/js/jquery-confirm.min.css" rel="stylesheet" />

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />

<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>

<title>Default tiles template</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<script src="${ctx }/static/plugins/layer/layer.js"></script>



<c:set var="ctx" value="${pageContext.request.contextPath}" />

<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<script src="${ctx }/static/js/jquery-confirm.min.js"
	type="text/javascript"></script>

<link href="${ctx }/static/js/jquery-confirm.min.css" rel="stylesheet" />

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />













<style type="text/css">
td {
	border: 1px #DDD solid;
	padding: 5px;
	cursor: pointer;
}

.selected {
	background-color: brown;
	color: #FFF;
}
</style>
</head>
<body>

	<table id="table">
		<tr>
			<td>1 Ferrari F138</td>
			<td>1 000€</td>
			<td>1 200€</td>

		</tr>
		<tr>
			<td>2 Ferrari F138</td>
			<td>1 000€</td>
			<td>1 200€</td>

		</tr>
		<tr>
			<td>3 Ferrari F138</td>
			<td>1 000€</td>
			<td>1 200€</td>

		</tr>
	</table>
	<table id="tlbTwo">
		<tbody>
			<tr>
				<td>aaaaa</td>
			</tr>
		</tbody>
	</table>


	<input type="button" id="tst" value="OK" onclick="fnselect()" />



</body>
<script type="text/javascript">
	var table = document.getElementById('table'), selected = table
			.getElementsByClassName('selected');
	table.onclick = highlight;
	function highlight(e) {
		if (selected[0])
			selected[0].className = '';
		e.target.parentNode.className = 'selected';
	}
	function fnselect() {

		alert($("#table tr.selected ").html());

		$("#tlbTwo").find('tbody').append('<tr>').append(
				$("#table tr.selected ").html()).append('</tr>');

	}
	/* $("#table tr").click(function() {
		$(this).addClass('selected').siblings().removeClass('selected');
		var value = $(this).find('td:first').html();
		alert(value);
	});

	$('.ok').on('click', function(e) {
		alert($("#table tr.selected td:first").html());
	}); */
	/* function fnselect() {
		var $row = $(this).parent().find('td');
		var clickeedID = $row.eq(0).text();
		alert(clickeedID);
	} */
</script>
</html>