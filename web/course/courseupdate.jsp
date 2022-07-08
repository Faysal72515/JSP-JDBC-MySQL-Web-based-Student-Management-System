<%-- 
    Document   : course
    Created on : Feb 20, 2022, 10:00:06 PM
    Author     : Hp
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update Course</h1>
        
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="coursedata.jsp">
                    
                    <% 
                         Connection con;
                           PreparedStatement pst;
                           ResultSet rs;
                           Class.forName("com.mysql.jdbc.Driver");

                           con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root",""); 
String id = request.getParameter("id");
pst = con.prepareStatement("select * from course where id = ?");
pst.setString(1,id);
rs = pst.executeQuery();


while(rs.next()){

                        







                        %>
                    
                    
                    
                    
                    
                    
                    <div>
                        <label class="form-label">Course ID</label>
                        <input type ="text" id="id" name="id" placeholder="id" class="form-control" value="<%= rs.getString("id") %>" required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Course Title</label>
                        <input type ="text" id="name" name="name" placeholder="course title" class="form-control" value="<%= rs.getString("coursename") %>"required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Duration</label>
                        <input type ="text" id="duration" name="duration" placeholder="duration" class="form-control" value="<%= rs.getString("duration") %>"required><!-- comment -->
                    </div>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="Reset">
                    </div>
                    
                    <% } %>

                </form>   
            </div>
              <div class="col-sm-8">
            
          
              </div>
              
              
              
        </div>
        
        
        
        
    </body>
</html>
