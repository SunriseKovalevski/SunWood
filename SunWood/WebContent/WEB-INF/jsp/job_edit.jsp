<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ui"%>
<ui:html title="job edit">
<div class="container">
	<ui:title title="job.edit"/>
	<div>
    <c:url value="/save_order.html" var="href"/><form action="${href}" method="POST">
      <input type="hidden" name="id" value="${job.id}">
      <ui:select name="type" label="label" items="${types}" id="id" property="name" />

      <ui:input name="val" label="order.val" />
      <ui:input name="exp_date" label="order.expdate" value="${job.creationDate}"/>
      <ui:input name="exp_time" label="order.exptime" value="${job.expDate}" />
      <ui:submit><fmt:message key="OK" /></ui:submit>
      <ui:submit><fmt:message key="Back" /></ui:submit>
      <ui:submit><fmt:message key="Del" /></ui:submit>
    </form>
  </div>
</div>
</ui:html>