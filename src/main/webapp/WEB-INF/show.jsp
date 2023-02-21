<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Books</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container">
      <div class="card-body">
        <h1>One Book</h1><br />
        <a href="/books/">Back to Shelves</a><br />
        <p>${book.user.userName} read ${book.title} by ${book.author}.</p>
        <br />
        <p>Here are ${book.user.userName}s thoughts:</p>
        <br />
        <p>
          ${book.thoughts}
        </p>
        <a class="btn btn-primary" href="/books/${book.id}/edit">Edit</a>
        <form action="/books/delete/${book.id}" method="post">
          <input type="hidden" name="_method" value="delete">
          <br>
          <input class="btn btn-primary" type="submit" value="Delete">
        </form>
      </div>
    </div>   
  </body>
</html>