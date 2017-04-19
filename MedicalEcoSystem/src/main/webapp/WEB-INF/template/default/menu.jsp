<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div class="menu">

	<div class="col col-md-12">
		<div class="list-group">
			<!-- home -->
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a class="list-group-item" href="${homeUrl}"
				style="text-align: center; background-color: slategray; color: whitesmoke">Drug
				Center</a>


			<!-- New Compound -->
			<spring:url value="/newCompound" var="newCompound" htmlEscape="false" />
			<a class="list-group-item" href="${newCompound}">New Compound</a>


			<!-- Update Compound -->
			<spring:url value="/updateCompound" var="updateCompound"
				htmlEscape="true" />
			<a class="list-group-item" href="${updateCompound}">Update
				Compound</a>


			<!-- New Drug  -->
			<spring:url value="/newDrug" var="newDrug" htmlEscape="true" />
			<a class="list-group-item" href="${newDrug}">New Drug</a>


			<!-- Update Drug  -->
			<spring:url value="/updateDrug" var="updateDrug" htmlEscape="true" />
			<a class="list-group-item" href="${updateDrug}">Update Drug</a>


			<!-- Message Channel -->
			<spring:url value="/msgChannel" var="msgChannel" htmlEscape="true" />
			<a class="list-group-item" href="${msgChannel}">Message Channel</a>
			<!-- logout -->

			<a class="list-group-item"
				style="text-align: center; background-color: lightcoral; color: whitesmoke; margin-top: 10px">Logout</a>
				
				
		</div>
	</div>

</div>