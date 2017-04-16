<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="menu">

	<div class="col col-md-12">
		<div class="list-group">
			<a class="list-group-item"
				style="text-align: center; background-color: slategray; color: whitesmoke">Drug
				Center</a> <a class="list-group-item" href="${ctx }/hello"
				target="contents">aa</a>

			<spring:url value="/home" var="homeUrl" htmlEscape="true" />
			<a class="list-group-item" href="${homeUrl}">Home</a>


			<spring:url value="/about" var="aboutUrl" htmlEscape="true" />
			<a class="list-group-item" href="${aboutUrl}">About</a> <a
				class="list-group-item">ccc</a> <a class="list-group-item"
				style="text-align: center; background-color: lightcoral; color: whitesmoke; margin-top: 10px">Logout</a>
		</div>
	</div>

</div>