<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<c:set var="ctx" value="${pageContext.request.contextPath}" />
		<div style="height: 600px; overflow: auto;">

			<div class="J_toolsBar clearfix">
				<input placeholder="Enter CompoundId" type="text" name="userName"
					id="userName" value="${userQueryDTO.userName }" />
				<button class="btn btn-primary" type="button">Query</button>
				<button class="btn btn-primary" type="button">New Compound</button>
			</div>

			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Drug Number</th>
						<th>Name</th>
						<th>Route</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="drug" items="${drugs}">
						<tr>
							<td>${drug.drugNumber}</td>
							<td>${drug.drugNumber}</td>
							<td>${drug.name}</td>
							<td>${drug.route}</td>
							<td><div>
									<a class=t_link
										href="${ctx}/editDrug?drugNumber=${drug.drugNumber }">Edit</a>
									<a class=t_link href="javascript:myEdit('${u.id }');">Delete</a>
								</div></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>



	</tiles:putAttribute>

</tiles:insertDefinition>