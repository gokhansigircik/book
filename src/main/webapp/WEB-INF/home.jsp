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
    <title>Home</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container mt-3">
      <h1>Welcome <c:out value="${user.userName}"/></h1>
      <p>Books from everyone's shelves:</p>

      <table class="table">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Title</th>
            <th scope="col">Author Name</th>
            <th scope="col">Posted By</th>
            <th scope="col">Action</th>

          </tr>
        </thead>
        <tbody>
          <c:forEach var="book" items="${books}">
          <tr>
            <td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
            <td><c:out value="${book.author}"></c:out></td>
            <td><c:out value="${book.mythoughts}"></c:out></td>
            <td><a href="/books/edit/${book.id}">Edit</a></td>
            <td>
              <form action="/books/delete/${book.id}" method="post">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" value="Delete">
              </form>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>

      <a href="/logout">Logout</a>
    </div>


    
    
  </body>
</html>