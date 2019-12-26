<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Log in with your account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <form method="POST" action="${contextPath}/login" class="form-signin">
      <h2><span>${message}</span></h2>
      
         <a class="form-group ${error != null ? 'has-error' : ''}"> </a>
         <div><input name="username" type="text" class="form-control" placeholder="Username"
                   autofocus="true"/></div>
                  
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <div><span>${error}</span></div>
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

           <div><button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button></div> 
            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
       
      </form>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>