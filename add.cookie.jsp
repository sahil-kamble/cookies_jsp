<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
...

 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
 
<%

String Username = request.getParameter("Username");
String password = request.getParameter("password");




if(Username.equals("admin") && password.equals("joy")){
	
	 Cookie cookie = new Cookie ("Username",Username); 
	 response.addCookie(cookie);
	 
	 Cookie cookie1 = new Cookie ("password",password); 
	 response.addCookie(cookie1);
	 
	response.sendRedirect("welcome.jsp"); 
	
} else {response.sendRedirect("error.jsp"); 
}

%>
</body>
</html>