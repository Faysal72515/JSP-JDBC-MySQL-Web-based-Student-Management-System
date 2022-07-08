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
        <h1>Update Student Record</h1>
        
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentdata.jsp">
                    
                    <% 
                         Connection con;
                           PreparedStatement pst;
                           ResultSet rs;
                           Class.forName("com.mysql.jdbc.Driver");

                           con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root",""); 
String id = request.getParameter("id");
pst = con.prepareStatement("select * from student where id = ?");
pst.setString(1,id);
rs = pst.executeQuery();


while(rs.next()){



                        %>
                    
                    
                    
                    
                    
                    
                    <div>
                        <label class="form-label">Serial No</label>
                        <input type ="text" id="id" name="id" placeholder="id" class="form-control" value="<%= rs.getString("id") %>" readOnly><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type ="text" id="bname" name="sname" placeholder="" class="form-control" value="<%= rs.getString("studname") %>"required><!-- comment -->
                    </div>
                    <div>
                        <label class="form-label">Course</label>
                        <input type ="text" id="course" name="course" placeholder="" class="form-control" value="<%= rs.getString("course") %>"required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Batch</label>
                        <input type ="text" id="batch" name="batch" placeholder="" class="form-control" value="<%= rs.getString("batch") %>"required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Address</label>
                        <input type ="text" id="address" name="address" placeholder="" class="form-control" value="<%= rs.getString("address") %>"required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Gender</label>
                        <input type ="text" id="gender" name="gender" placeholder="" class="form-control" value="<%= rs.getString("gender") %>"required><!-- comment -->
                    </div>
                    
                    
                    <div>
                        <label class="form-label">Phone No</label>
                        <input type ="text" id="phone" name="phone" placeholder="" class="form-control" value="<%= rs.getString("phone") %>"required><!-- comment -->
                    </div>
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="Reset">
                    </div>
                    
                    <% } %>

                </form>   
            </div>
              <div class="col-sm-8">
                  <img src="../images/que.png" alt=""/>
          
              </div>
              
              
              
        </div>
        
        
        
        
    </body>
</html>
