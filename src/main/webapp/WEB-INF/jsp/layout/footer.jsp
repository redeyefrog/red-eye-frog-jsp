<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyy" var="year" scope="session" />
<div class="p-0 text-center">
    <div class="container-fluid copy-right">
        © <span><c:out value="${year}" /></span> RedEyeFrog.
    </div>
</div>