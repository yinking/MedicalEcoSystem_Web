<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="menu">

	<div class="col col-md-12">
		<div class="list-group">
			<!-- home -->
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a class="list-group-item" href="${homeUrl}"
				style="text-align: center; background-color: slategray; color: whitesmoke">Drug
				Center</a>


			<!-- New Compound -->
			<a class="list-group-item" href="${ctx }/hello" target="contents">New
				Compound</a>

			<!-- Update Compound -->
			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a class="list-group-item" href="${homeUrl}">Update Compound</a>


			<!-- New Drug  -->
			<spring:url value="/about" var="aboutUrl" htmlEscape="true" />
			<a class="list-group-item" href="${aboutUrl}">New Drug</a>


			<!-- Update Drug  -->
			<spring:url value="/about" var="aboutUrl" htmlEscape="true" />
			<a class="list-group-item" href="${aboutUrl}">Update Drug</a>
			<!-- Message Channel -->
			<a class="list-group-item">Message Channel</a>
			<!-- logout -->

			<a class="list-group-item"
				style="text-align: center; background-color: lightcoral; color: whitesmoke; margin-top: 10px">Logout</a>
		</div>
	</div>

</div>