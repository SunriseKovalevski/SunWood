<%@ tag%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ attribute name="title"%>
<div class="panel panel-default">
	<c:if test="${not empty title}">
		<div class="panel-heading">${title}</div>
	</c:if>
	<div class="panel-body">
		<jsp:doBody />
	</div>
</div>
