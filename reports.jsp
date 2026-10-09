<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.List"%>

<!DOCTYPE html>
<html>

<head>

<title>Sales Reports</title>

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

<h2>Sales Reports</h2>

<table>

<tr>
    <th>Report</th>
    <th>Value</th>
</tr>

<tr>
    <td>Overall Sales</td>
    <td>${overallSales}</td>
</tr>

<tr>
    <td>Highest Volume Item</td>
    <td>${highestVolumeItem}</td>
</tr>

<tr>
    <td>Lowest Volume Item</td>
    <td>${lowestVolumeItem}</td>
</tr>

<tr>
    <td>Highest Cost Item</td>
    <td>${highestCostItem}</td>
</tr>

<tr>
    <td>Lowest Cost Item</td>
    <td>${lowestCostItem}</td>
</tr>

</table>


<div class="section">

<h3>Top 10 Items</h3>

<table>

<tr>
<th>Item</th>
</tr>

<%
List top10Items = (List) request.getAttribute("top10Items");
if (top10Items != null) {
    for (Object item : top10Items) {
%>

<tr>

<td><%= item %></td>

</tr>

<%
    }
}
%>

</table>

</div>



<div class="section">

<h3>Bottom 10 Items</h3>

<table>

<tr>
<th>Item</th>
</tr>

<%
List bottom10Items = (List) request.getAttribute("bottom10Items");
if (bottom10Items != null) {
    for (Object item : bottom10Items) {
%>

<tr>

<td><%= item %></td>

</tr>

<%
    }
}
%>

</table>

</div>



<div class="section">

<h3>Top 3 Shops</h3>

<table>

<tr>
<th>Shop</th>
</tr>

<%
List top3Shops = (List) request.getAttribute("top3Shops");
if (top3Shops != null) {
    for (Object shop : top3Shops) {
%>

<tr>

<td><%= shop %></td>

</tr>

<%
    }
}
%>

</table>

</div>



<div class="section">

<h3>Bottom 3 Shops</h3>

<table>

<tr>
<th>Shop</th>
</tr>

<%
List bottom3Shops = (List) request.getAttribute("bottom3Shops");
if (bottom3Shops != null) {
    for (Object shop : bottom3Shops) {
%>

<tr>

<td><%= shop %></td>

</tr>

<%
    }
}
%>

</table>

</div>

<br>

<a href="dashboard.jsp">← Back to Dashboard</a>

</div>
<script src="js/jquery.min.js"></script>
<script src="js/script.js"></script>

</body>

</html>