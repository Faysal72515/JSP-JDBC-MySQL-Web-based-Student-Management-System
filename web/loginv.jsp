<%
String username = request.getParameter("uname");
String password = request.getParameter("password");

if(username.equals("Faysal") && password.equals("515"))
{
String redirect="mainsec.jsp";
response.sendRedirect(redirect);
}
else{
out.println("Username or password is incorrect.");
}

%>

