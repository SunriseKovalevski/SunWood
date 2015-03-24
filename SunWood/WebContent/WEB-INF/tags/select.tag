<%@ tag%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ attribute name="name"%>
<%@ attribute name="label"%>
<%@ attribute name="items" type="java.util.Collection"%>
<%@ attribute name="id"%>
<%@ attribute name="property"%>
<div class="form-group">
	<label><fmt:message key="${label}" />:</label> <select
		class="form-control" name="${name}">
		<option></option>
	</select>
</div>
