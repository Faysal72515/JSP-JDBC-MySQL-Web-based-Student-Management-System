<%-- 
    Document   : course
    Created on : Feb 20, 2022, 10:00:06 PM
    Author     : Hp
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     Connection con;
     PreparedStatement pst;
     ResultSet rs;
    
    %>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        <title>Registration</title>
    </head>
    <body>
        <h1>Student Registration</h1>
        
        <div class ="row">
            <div class="col-sm-4">
                <form method="POST" align="left" action="sadd.jsp">
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type ="text" id="sname" name="sname" placeholder="name" class="form-control" required><!-- comment -->
                    </div>
                    
                    <div>
                        <label class="form-label">Course</label>
                        <select name ="course" id="course" class="form-control">
                            <%
                            Class.forName("com.mysql.jdbc.Driver");

                            con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root","");
                            
     String query ="select * from course";
     Statement st = con.createStatement();
     rs = st.executeQuery(query);
     while(rs.next()){
     String id = rs.getString("id");
     String coursename = rs.getString("coursename");
                                %>
                                
                                <option value="<%=id %>"><%=coursename %></option>                       
                                
                                
                                <%
                                }
                            %>
              
                        </select>                         
                    </div>
                    
                    
                      <div>
                        <label class="form-label">Batch</label>
                        <select name ="batch" id="batch" class="form-control">
                            
                              <%
                            Class.forName("com.mysql.jdbc.Driver");

                            con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root","");
                            
     String query1 ="select * from batch";
     Statement st1 = con.createStatement();
     rs = st1.executeQuery(query1);
     while(rs.next()){
     String id = rs.getString("id");
     String batchname = rs.getString("batchname");
                                %>
                                
                                <option value="<%=id %>"><%=batchname %></option>                       
                                
                                
                                <%
                                }
                            %>
              
                        </select>                         
                    </div>
                    
                    <div>
                        <label class="form-label">Address</label>
                        <input type ="text" id="address" name="address" placeholder="address" class="form-control" required><!-- comment -->
                    </div>
                            
                            <div>
                                <label class="form-label">Gender</label>
                        <select name ="gender" id="gender" class="form-control">
                            <option> Male</option>
                            <option>Female</option>
                             <option>Common</option>
                            </div>
                    
                    <div>
                        <label class="form-label">Phone No</label>
                        <input type ="number" id="phone" name="phone" placeholder="phone no" class="form-control" required><!-- comment -->
                    </div>
                    
                    
                    <div>
                        <input type="submit" name="submit" class="btn btn-info" value="Submit">
                       <input type="reset" name="reset" class="btn btn-warning" value="reset">
                    </div>

                </form>   
            </div>
              <div class="col-sm-8">
              <div class ="panel-body">
                  <table id ="tbl-course" class="table table-responsive table-bordered"cellpadding="0" width="100%">
                      
                      <thead>
                          <tr>
                              <th>Student Name</th>
                              <th>Course</th>
                              <th>Batch</th><!-- comment -->
                              <th>Address</th>
                              <th>Gender</th>
                              <th>Phone</th>
                              <th>Edit</th>
                              <th>Delete</th>
                          </tr>
                      <tbody>
                          <%
                        
                           Class.forName("com.mysql.jdbc.Driver");

                           con =DriverManager.getConnection("jdbc:mysql://localhost/jspstu","root",""); 

String query3 ="select s.id, s.studname, c.coursename,b.batchname, s.address, s.gender, s.phone from student s JOIN course c ON s.course = c.id JOIN batch b ON s.batch = b.id";
Statement st3 = con.createStatement();
rs=st3.executeQuery(query3);

while(rs.next()){

String id = rs.getString("s.id");

                              

                              %>
                          <tr>
                              <td><%=rs.getString("s.studname") %></td>
                               <td><%=rs.getString("c.coursename") %></td>
                               <td><%=rs.getString("b.batchname") %></td><!-- comment -->
                                <td><%=rs.getString("s.address") %></td>
                                <td><%=rs.getString("s.gender") %></td>
                                 <td><%=rs.getString("s.phone") %></td>
                               <td><a href="studentupdate.jsp?id=<%=id %> ">Edit</a></td>
                         <td><a href="studentdelete.jsp?id=<%=id %> ">Delete</a></td>
                          </tr>
                          
                   <% } %>
                      </tbody>
                      
                  </table>
                  
                  
                  
              </div>
          
              </div>
              
              
              
        </div>
        
        
        
        
    </body>
</html>
