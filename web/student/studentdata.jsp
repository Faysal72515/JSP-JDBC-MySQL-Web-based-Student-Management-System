<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%
String serialid = request.getParameter("id");
String studname = request.getParameter("sname");
String  course= request.getParameter("course");
String batch = request.getParameter("batch");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String phone = request.getParameter("phone");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");

con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root","");
pst = con.prepareStatement("update student set studname = ?,course = ?, batch = ?,  address = ?,gender = ?, phone = ? where id = ?");
pst.setString(1, studname);
pst.setString(2, course);
pst.setString(3, batch);
pst.setString(4, address);
pst.setString(5, gender);
pst.setString(6, phone);
pst.setString(7, serialid);
pst.executeUpdate();
out.println("Student record updated Successfully.");

%>

 