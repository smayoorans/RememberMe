<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/style.css"/>"/>

</head>
<body onload='document.loginForm.j_username.focus();'>

<h1 align="center">Login Form (Remember Me Example)</h1>

<div id="login-box">

    <h3>Login</h3>

    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>

    <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>

        <table>
            <tr>
                <td><label for="username"> Username: </label></td>
                <td>
                    <input type='text' id="username" name='j_username'>
                </td>
            </tr>
            <tr>
                <td><label for="password"> Password: </label></td>
                <td><input type='password' id="password" name='j_password'/></td>
            </tr>

            <!-- if this is login for update, ignore remember me check -->
            <%--<c:if test="${empty loginUpdate}">
                <tr>
                    <td></td>
                    <td>Remember Me: <input type="checkbox" name="remember-me" /></td>
                </tr>
            </c:if>
--%>
            <tr>
                <td colspan='2'><input name="submit" type="submit"
                                       value="submit"/></td>
            </tr>

        </table>

    </form>

</div>

</body>
</html>