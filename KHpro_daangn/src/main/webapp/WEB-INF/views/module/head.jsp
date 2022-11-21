<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:url var="jQuery" value="/resources/js" />
<c:url var="JS" value="/resources/js" />
<c:url var="cssUrl" value="/static/css" />
<c:url var="img" value="/resources/img" />
<link type="text/css" rel="stylesheet" href="${cssUrl}/common.css">
<script type="text/javascript" src="${JS}/common.js"></script>
<script type="text/javascript" src="${jQuery}/jquery-3.6.0.min.js"></script>

<c:url var="main" value="/" />
<c:url var="jobs" value="/jobs" />
<c:url var="realty" value="/realty" />
<c:url var="chat" value="/chat" />
<c:url var="user" value="/user" />
<c:url var="join" value="/join" />
<c:url var="login" value="/login" />
<c:url var="logout" value="/logout" />
<c:url var="search" value="/search" />
<c:url var="articles" value="/articles" />
<c:url var="hotArticles" value="/hot_articles" />
<c:url var="topKeywords" value="/top_keywords" />
<c:url var="jobAddUrl" value="jobs/add" />
<c:url var="jobPostsUrl" value="/job-posts" />