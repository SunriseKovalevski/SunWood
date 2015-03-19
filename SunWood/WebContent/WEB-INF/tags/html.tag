<%@ tag%>
<%@ attribute name="title"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><fmt:message key="${title}"/></title>
  <!-- Bootstrap -->
  <c:url value="/css/bootstrap.min.css" var="href"/>
  <link href="${href}" rel="stylesheet">
  <c:url value="/css/bootstrap-theme.min.css" var="href"/>
  <link href="${href}" rel="stylesheet">
  <!-- Maintenance -->
  <c:url value="/css/style.css" var="href"/>
  <link href="${href}" rel="stylesheet">
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <jsp:doBody />
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <c:url value="/js/bootstrap.min.js" var="href"/>
  <script src="${href}"></script>
</body>
</html>
