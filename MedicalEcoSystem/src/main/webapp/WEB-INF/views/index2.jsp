<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<script src="${ctx }/static/plugins/layer/layer.js"></script>


<link href="${ctx }/static/css/base.css" rel="stylesheet" />
<link href="${ctx }/static/css/desktop.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${ctx }/static/plugins/chosen_v1.6.2/chosen.css" rel="stylesheet" />



<link href="${ctx }/static/css/base.css" rel="stylesheet" />
<link href="${ctx }/static/css/desktop.css" rel="stylesheet" />
<link href="${ctx }/static/plugins/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
<link href="${ctx }/static/plugins/nice-validator-0.7.3/jquery.validator.css" rel="stylesheet" />
<link rel="shortcut icon" href="${ctx }/static/favicon/favicon.ico">

<script src="${ctx }/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/jquery/jquery.cookie.js" type="text/javascript"></script>
<script src="${ctx }/static/js/common.js"></script>
<script src="${ctx }/static/js/uiExtend.js"></script>
<script src="${ctx }/static/js/jquery.nicescroll.min.js"></script>

<script src="${ctx }/static/plugins/layer/layer.js"></script>
<script type="text/javascript" src="${ctx }/static/plugins/laypage/laypage.js"></script>
<script src="${ctx }/static/plugins/nice-validator-0.7.3/src/jquery.validator.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/nice-validator-0.7.3/local/zh_CN.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/jquery/jquery.form.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/jquery/jquery.formatDateTime.js" type="text/javascript"></script>
<script src="${ctx }/static/plugins/base.js" type="text/javascript"></script>







<title></title>



</head>
<body>
	<a class=t_link href="javascript:myEdit('1');">Edit</a>
</body>
<script type="text/javascript">
	function myEdit(id) {

		var loadIdx = layer.load();
		var title = 'Title';
		if (!id) {
			id = '';
		} else {
			title = 'Title1';
		}
		$.post('${ctx}/editCompound', {}, function(str) {
			layer.close(loadIdx);
			layer.open({
				title : title,
				type : 1,
				area : [ '600px', '400px' ],
				content : str,
				btn : [ 'Confirm', 'Cancel' ],
				yes : function(index, layero) {

					/* 					$('#editForm').submit();
					 */},
				btn2 : function(index, layero) {
					layer.close(index);
				}
			});
		});
	}
</script>
</html>
