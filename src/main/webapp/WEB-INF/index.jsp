<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Book </title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container">
      
          <h1 style="color: blue;" >Book Club</h1>
          <p>A place for friends to share thoughts on books</p>
          <form:form action="/register" method="post" modelAttribute="newUser">
            <p>
              <form:label path="userName">User Name:</form:label>
              <form:errors path="userName" />
              <form:input path="userName" class="form-control"/>
            </p>
            <p>
              <form:label path="email">Email:</form:label>
              <form:errors path="email" />
              <form:input path="email" class="form-control"/>
            </p>
            <p>
              <form:label path="password">Password:</form:label>
              <form:errors path="password" />
              <form:input type="password" path="password" class="form-control"/>
            </p>
            <p>
              <form:label path="confirm">Confirm PW:</form:label>
              <form:errors path="confirm" />
              <form:input type="password" path="confirm" class="form-control"/>
            </p>
            <input type="submit" value="submit" class="btn btn-warning"/>
          </form:form>
          <br>
          <br>
          <form:form action="/login" method="post" modelAttribute="newLogin">
          <p>
            <form:label path="email">Email:</form:label>
            <form:errors path="email" />
            <form:input path="email" class="form-control"/>
          </p>
          <p>
            <form:label path="password">Password:</form:label>
            <form:errors path="password" />
            <form:input type="password" path="password" class="form-control"/>
            
          </p>
          <input type="submit" value="submit" class="btn btn-warning" />
            </form:form>
        
    </div>

  </body>
</html>