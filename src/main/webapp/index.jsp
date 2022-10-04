<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%!
    int n = 1;
    %>
<%!
    int day  = 1 ;
    String check = "dasveneba";

%>

<h1>
<%
    out.print(n);
    out.print("xoda egre teslo" + request.getRemoteAddr() ) ;
%>
</h1>
<h2><%= "Good Bye World" %>
</h2>
<h2><%= "Fuck You World" %>
</h2>
<br/>
<p>
    <%

        out.print(n);
        out.print("dockerakacia");
    %>
</p>
<p>
    <%
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH-mm-ss");
        LocalDateTime now = LocalDateTime.now();
        out.print("time now" + dtf.format(now));
    %>
</p>


<% if (day == 1 || day ==7 ){ %>
        <p> dasvenebaa</p>
<%} else if (day>1 || day <7) {%>
        <p> imushavavirebo</p>
<% }%>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>