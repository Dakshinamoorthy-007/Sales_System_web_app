<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>

<html>

<head>

<title>Sales System Login</title>

<link rel="stylesheet" href="css/style.css"/>

</head>

<body>

<h2>Sales System</h2>

<form method="POST"
      action="j_security_check">

    <input
            type="text"
            name="j_username"
            placeholder="Username"
            required>

    <input
            type="password"
            name="j_password"
            placeholder="Password"
            required>

    <button type="submit">

        Login

    </button>

</form>

</body>

</html>