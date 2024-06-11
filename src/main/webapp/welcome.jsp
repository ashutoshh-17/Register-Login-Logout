<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
<%
    //Retrieve the session object
    HttpSession session1 = request.getSession(false);

    // Check if the session is not null and the username attribute is set
    if (session1 != null && session1.getAttribute("username") != null) {
    // Get the username from the session
    String username = (String) session1.getAttribute("username");
%>
 <div class="container">
        <h1>Welcome, <%= username %>!</h1>
        <p>You have successfully logged in!</p>
        <h3>You will end up finding nothing on this server</h3>
        <p>When you logged in here with no issues</p> 
        you can <a href="logout.jsp">logout</a> securely.
    </div>
        <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
        %>