<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">Create your account</h2>

            <spring:bind path="name">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <form:input type="text" path="name" class="form-control" placeholder="Name"
                                            autofocus="true"></form:input>
                                <form:errors path="name"></form:errors>
                            </div>
                        </spring:bind>

                        <spring:bind path="dob">
                                        <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="gender">Date Of Birth</label><br>
                                            <form:input type="date" path="dob" class="form-control" placeholder="YYYY-MM-DD"
                                            autofocus="true"></form:input>
                                            <form:errors path="dob"></form:errors>
                                        </div>
                                    </spring:bind>

                                    <spring:bind path="gender">
                                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                                             <label for="gender">Gender</label><br>
                                                             <form:radiobutton path="gender" value="male" label="Male" />
                                                             <form:radiobutton path="gender" value="female" label="Female" />
                                                             <form:errors path="gender"></form:errors>
                                                         </div>
                                                </spring:bind>

            <spring:bind path="address">
                                         <div class="form-group ${status.error ? 'has-error' : ''}">
                                             <form:input type="text" path="address" class="form-control" placeholder="Address"
                                                         autofocus="true"></form:input>
                                             <form:errors path="address"></form:errors>
                                         </div>
                                     </spring:bind>

             <spring:bind path="state">
                                                 <div class="form-group ${status.error ? 'has-error' : ''}">
                                                          <form:input type="text" path="state" class="form-control" placeholder="State"
                                                                      autofocus="true"></form:input>
                                                          <form:errors path="state"></form:errors>
                                                      </div>
                                                  </spring:bind>

                    <spring:bind path="city">

                         <div class="form-group ${status.error ? 'has-error' : ''}">
                             <form:input type="text" path="city" class="form-control" placeholder="City"
                                    autofocus="true"></form:input>
                             <form:errors path="city"></form:errors>
                           </div>
                       </spring:bind>

            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>