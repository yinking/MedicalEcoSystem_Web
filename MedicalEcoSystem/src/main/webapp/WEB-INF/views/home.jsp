<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div style="height: 600px; overflow: auto;">


			<p> Welcome ${role} ! </p>


		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>


<script type="text/javascript">
	function myEdit(id) {
		var loadIdx = layer.load();
		var title = '添加用户';
		if (!id) {
			id = '';
		} else {
			title = '修改用户';
		}
		$.post("${ctx}/editCompound");

	}
</script>









