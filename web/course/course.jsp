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
        <h1>Course</h1>
        
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Course Title</label>
                        <input type ="text" id="name" name="name" placeholder="Course Title" class="form-control" required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Duration</label>
                        <input type ="text" id="duration" name="duration" placeholder="Duration" class="form-control" required><!-- comment -->
                    </div>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="reset">
                    </div>

                </form>   
            </div>
              <div class="col-sm-8">
              <div class ="panel-body">
                  <table id ="tbl-course" class="table table-responsive table-bordered"cellpadding="0" width="100%">
                      
                      <thead>
                          <tr>
                              <th>Course Title</th>
                              <th>Duration</th>
                              <th>Edit</th><!-- comment -->
                              <th>Delete</th>
                          </tr>
                      <tbody>
                          <%
                           Connection con;
                           PreparedStatement pst;
ResultSet rs;
                           Class.forName("com.mysql.jdbc.Driver");

                           con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root",""); 

String query ="select * from course";
Statement st = con.createStatement();
rs=st.executeQuery(query);

while(rs.next()){

String id = rs.getString("id");

                              

                              %>
                          <tr>
                              <td><%=rs.getString("coursename") %></td>
                               <td><%=rs.getString("duration") %></td>
                               <td><a href="courseupdate.jsp?id=<%=id %> ">Edit</a></td>
                         <td><a href="coursedelete.jsp?id=<%=id %> ">Delete</a></td>
                          </tr>
                          
                          <% } %>
                      </tbody>
                      
                  </table>
                  
                  
                  
              </div>
          
              </div>
              
              
              
        </div>
        
        
        
        
    </body>
</html>
