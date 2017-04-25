<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="menu">

	<div class="col col-md-12">
		<div class="list-group">
			<!-- home -->
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a class="list-group-item" href="${homeUrl}"
				style="text-align: center; background-color: slategray; color: whitesmoke">${centerName }</a>
			<%-- 			<a class="list-group-item" href="${homeUrl}"
				style="text-align: center; background-color: slategray; color: whitesmoke">Drug
				Center</a> --%>


			<!-- New Compound -->
			<spring:url value="/saveCompound" var="saveCompound"
				htmlEscape="false" />
			<a class="list-group-item" href="${saveCompound}">New/Edit
				Compound</a>


			<!--  Compound List -->
			<spring:url value="/compoundList" var="compoundList"
				htmlEscape="true" />
			<a class="list-group-item" href="${compoundList}"> Compound List</a>


			<!-- New Drug  -->
			<spring:url value="/newDrug" var="newDrug" htmlEscape="true" />
			<a class="list-group-item" href="${newDrug}">New/Edit Drug</a>


			<!-- Drug List  -->
			<spring:url value="/drugList" var="drugList" htmlEscape="true" />
			<a class="list-group-item" href="${drugList}">Drug List</a>


			<!-- Message Channel -->
			<spring:url value="/msgChannel" var="msgChannel" htmlEscape="true" />
			<a class="list-group-item" href="${msgChannel}">Message Channel</a>
			<!-- logout -->

			<spring:url value="/logout" var="logout" htmlEscape="true" />
			<a class="list-group-item" href="${logout}"
				style="text-align: center; background-color: lightcoral; color: whitesmoke; margin-top: 10px">Logout</a>


		</div>
	</div>

</div>