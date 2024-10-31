<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@page import="dao.BookRepository"%>
<jsp:useBean id="BookDAO" class="dao.BookRepository" scope="session"/>
<html>
<head>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>책 목록</title>
</head>    
<body>
    <jsp:include page ="menu.jsp" />
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">도서 목록</h1>
      </div>
    </div>
    
    <%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
    
    <div class="container">
      <div class="col" align="left">
        <% for(int i = 0; i < listOfBooks.size(); i++){
        	Book book = listOfBooks.get(i);
        %>
        <div class="col-lg">
          <h4>[<%= book.getCategory() %>] <%= book.getName() %></h4>
          <p><%= book.getDescription()%>
          <p><%= book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>원
          <p> <a href="./product.jsp?id=<%=book.getBookId() %>"
          class="btn btn-secondary" rold="button">상세 정보 &raquo;></a>
        </div>
        <hr>
          <% } 
          %>            
      </div>
      
    </div>
    
    <jsp:include page ="footer.jsp" />
</body>
</html>
