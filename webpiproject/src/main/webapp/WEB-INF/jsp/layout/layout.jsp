<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/libs/tagLibs.jsp"%>

<tiles:importAttribute name="title" />

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- <title><fmt:message key="${title}"/></title>  ovo bi bilo u slucaju da imamo mogucnost promene jezika -->
<title><tiles:insertAttribute name="title"/></title>
<link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css" />
<script src="<c:url value="/js/libs/jquery.min.js"/>"></script>
<script src="<c:url value="/js/libs/angular.min.js"/>"></script>
<script src="<c:url value="/js/libs/main.js"/>"></script>
</head>
<body>
	<header>
	<div id="header"></div>
	</header>
	<section>
		<tiles:insertAttribute name="content" />
	</section>
	<footer>
		<div id="footer"></div>
	</footer>
</body>
</html>