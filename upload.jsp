<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<!DOCTYPE html>
<html>

<head>

<title>Upload Sales File</title>

<link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="navbar">

    <h2>Sales Management System</h2>

    <div>

        <a href="dashboard.do">Dashboard</a>

        <a href="upload.jsp">Upload</a>

        <a href="report.do">Reports</a>

        <a href="login.jsp">Logout</a>

    </div>

</div>

<div class="container">

<h2>Upload Sales Data</h2>

<%
String message = (String)request.getAttribute("message");

if(message != null){
%>

<div class="message">
    <%= message %>
</div>

<%
}
%>

<html:form action="/upload" enctype="multipart/form-data">

<table>

<tr>

<td>Select File</td>

<td>

<html:file property="salesFile"/>

</td>

</tr>

<tr>

<td colspan="2" align="center">

<html:submit value="Upload"/>

</td>

</tr>

</table>

</html:form>

</div>
<script src="js/jquery.min.js"></script>
<script src="js/script.js"></script>

</body>

</html>