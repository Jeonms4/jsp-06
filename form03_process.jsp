<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
    <b>선택한 과일</b><p>
        <%
        request.setCharacterEncoding("utf-8");
        String []fruit=request.getParameterValues("name");
        if(fruit!=null)
        {
            for(int i=0;i<fruit.length;i++)
            {
                out.println(" "+fruit[i]);
            }
        }
        %>
</body>
</html>