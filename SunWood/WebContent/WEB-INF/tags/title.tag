<%@ tag%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ attribute name="title"%>
<h1>
  <fmt:message key="${title}" />
</h1>
