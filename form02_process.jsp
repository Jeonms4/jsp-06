<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        Enumeration en=request.getParameterNames();
        
        Enumeration em=request.getParameterNames();
        while(em.hasMoreElements())
        {
            String name=(String)em.nextElement();
            String pValue=request.getParameter(name);
            out.println(name+" : "+pValue + "<br>");
        }
        
    %>
</body>
</html>