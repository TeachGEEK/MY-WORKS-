<%-- 
    Document   : newjsp
    Created on : Jul 18, 2017, 12:01:34 PM
    Author     : shubha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input type="submit" value="PRINT" onClick="print()"/>
        <h1 style="color:blue;" align="center"> <b><u>BENZOL RECTIFICATION PLANT</u></b></h1>
    </body>
</html>
<%
    String s1=request.getParameter("m");
    out.print("Truck no."+s1); 
    %>
