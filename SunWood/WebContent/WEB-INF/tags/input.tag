<%@ tag%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ attribute name="name"%>
<%@ attribute name="label"%>
<%@ attribute name="value" type="java.lang.Object"%>
<div class="form-group">
  <label><fmt:message key="${label}" />:</label>
  <input type="text" class="form-control" name="${name}" value="${value}">
</div>
