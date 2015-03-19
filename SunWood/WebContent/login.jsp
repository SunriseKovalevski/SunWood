<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ui"%>
<ui:html title="login.title">
<div class="container">
  <h1><fmt:message key="login.title" /></h1>
  <div>
    <c:url value="/j_security_check" var="href"/><form action="${href}" method="POST">
      <ui:input name="j_username" label="username" />
      <fmt:message key='passwd' var="msg" /><ui:password name="j_password" label="${msg}" />
      <ui:submit><fmt:message key="login" /></ui:submit>
    </form>
  </div>
</div>
</ui:html>
