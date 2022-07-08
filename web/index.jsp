<%-- 
    Document   : login
    Created on : Feb 20, 2022, 9:21:14 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        
        <title>Login Page</title>
    </head>
    
    <body>
        <h1>Login</h1>
        
        <div class ="row">
            
            <div class ="col-sm-4">
                <form method="POST" action="loginv.jsp">
                    <div align="left">
                        <label class="form-label">Username</label>
                        <input type="text" id ="uname" name="uname" class="form-control" placeholder="username" size="30px" required><!-- comment -->
             
                    </div>
                      </br>
                    <div align="left">
                        <label class="form-label"> Password</label>
                        <input type="password" id ="password" name="password" class="form-control"placeholder="password" size="30px" required><!-- comment -->
             
                    </div>
                    </br>
                      </br>
                     <div align="left">
                        <input type="submit" id ="submit" name="submit" value="Login" class="btn btn-info"><!-- comment -->
                        <input type="reset" id ="reset" name="reset" value="Reset" class="btn btn-danger"><!-- comment -->
             
                    </div>
                    
                    
                    
                </form>
                
                
                
            </div>
            
             <div class ="col-sm-8">
                 <img src="images/manage.PNG" class="rounded" alt=""/>
                 
                 </br>
                 </br><!-- comment -->
                  </br>
                 <p>Name: Faysal Sarder</p>
                 <p>  ID: 181472515   </p> 
            </div>
            
            
        </div>
        
        
    </body>
</html>
