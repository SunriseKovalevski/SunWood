<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<ui:html title="job list">
<div class="container">
	<ui:title title="job.title" />
	<c:url value="/job_edit" var="href" />
	<a class="btn btn-default" href="${href}" role="button">Create New</a>
	<ui:panel>
    <table class="table table-hover">
      <thead>
        <tr>
          <th>#</th>
          <th><fmt:message key="job.create.date" /></th>
          <th><fmt:message key="job.type" /></th>
          <th><fmt:message key="job.value" /></th>
          <th><fmt:message key="job.exp.time" /></th>
          <th><fmt:message key="job.status" /></th>
          <th><fmt:message key="job.cancel" /></th>
        </tr>
      </thead>
      <tbody>
        
      </tbody>
    </table>
  </ui:panel>
</div>
</ui:html>