<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
</head>

<body>

<c:url value="/login" var="loginUrl" />

<form name="form-login" action="${loginUrl}" method="POST" class="box login">

    <fieldset class="boxBody">

        <label> Username </label> <input type="text" name="user_login" value="">


        <label> Password </label> <input type="password" name="password_login" value="">

    </fieldset>

    <footer>

        <input name="submit" type="submit" class="btnLogin" value="submit">
        <c:if test="${not empty error}">
            <span class="error">${error}</span>
        </c:if>

    </footer>

</form>

</body>
</html>
