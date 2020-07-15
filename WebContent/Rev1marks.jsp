
<%@page import="com.login.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {
  height: 100%;
}

body {
  margin: 0;
  background: linear-gradient(45deg, #99d6ff, #003d66);
  font-family: sans-serif;
  font-weight: 100;
}
table {
  width: 800px;
  border-collapse: collapse;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
  padding: 15px;
  background-color: #141452;
  color: #fff;
}

th {
  text-align: left;
}

thead {
  th {
    background-color: #00bfff;
  }
}

tbody {
  tr {
    &:hover {
      background-color: rgba(255,255,255,0.3);
    }
  }
  td {
    position: relative;
    &:hover {
      &:before {
        content: "";
        position: absolute;
        left: 0;
        right: 0;
        top: -9999px;
        bottom: -9999px;
        background-color: #59b1f0;
        z-index: -1;
      }
    }
  }
}
/*table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}*/
</style>


<head>
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>
</head>
<body>
   <div class="wrapper">
        <div class="sidebar" data-image="assets/img/sidebar-4.jpg" data-color="blue">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="javascript:;" class="simple-text">
                      Project Review System
                    </a>
                </div>
                <ul class="nav">
                
                <li class="nav-item active">
                        <a class="nav-link" href="Rev1marks.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Evaluate Students</p>
                        </a>
                    </li>
                
                
                <li >
                        <a class="nav-link" href="Reviewer_weekly_log.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Weekly log Report</p>
                        </a>
                    </li>
                
                
                <li >
                        <a class="nav-link" href="">
                            <i class="nc-icon nc-bell-55"></i>
                            <p>Info for Reviewer</p>
                        </a>
                    </li>
                    
                    
                    
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#pablo">Template</a>
                    <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                    <i class="nc-icon nc-palette"></i>
                                    <span class="d-lg-none">Dashboard</span>
                                </a>
                            </li>
                            <li class="dropdown nav-item">
                                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                    <i class="nc-icon nc-planet"></i>
                                    <span class="notification">5</span>
                                    <span class="d-lg-none">Notification</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Notification 1</a>
                                    <a class="dropdown-item" href="#">Notification 2</a>
                                    <a class="dropdown-item" href="#">Notification 3</a>
                                    <a class="dropdown-item" href="#">Notification 4</a>
                                    <a class="dropdown-item" href="#">Another notification</a>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;;Search</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Account</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon">Dropdown</span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Log out</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                    <div class="section">
                    
                    
<h3>Group <%=session.getAttribute("Reviewer_grp_id") %> Evaluation</h3>                    
<form action="Form_submit" method="post">
 
      <p><b>Entry for Student 1:</b></p>      
     <table>
  <tbody> 
      <tr></tr>
    <td><b>Roll number of the student 1</b></td>
    <th><select name="Student_Roll_No1">          
     
 <%	
 ArrayList<Student> students=(ArrayList)session.getAttribute("student_array");
	Integer i=0;
	if(i<students.size())
	{	
		Student stu_obj=new Student();
		stu_obj=students.get(i);
%>	

 <option> <%= stu_obj.getStudentId()   %>  </option>
	
<%
	i++;
	}

%>  

 </select> 
 </th>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Background & Topic(4M)</b></td>
    <td><input type="text" name="bg_and_t1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>project Scope & Objectives(4M)</b></td>
    <td><input type="text" name="Pj_scope_n_obj1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Literature Suvey(5M)</b></td>
    <td><input type="text" name="Lit_survey1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Project Planning(4M)</b></td>
    <td><input type="text" name="Proj_plan1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Presentation Skills(4M)</b></td>
    <td><input type="text" name="Present_skill1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Question And Answers(4M)</b></td>
    <td><input type="text" name="QnA1" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    </tbody>
   </table>
   <p><b>student 2:</b></p>
   <table>
   <tbody>
   
    <td><b>Roll number of the student 2</b></td>
    <th><select name="Student_Roll_No2">          
     
 <%	
	
	if(i<students.size())
	{		
		Student stu_obj=new Student();
		stu_obj=students.get(i);
%>	

 <option> <%= stu_obj.getStudentId()   %>  </option>
	
<%
	i++;
	}

%>  

 </select> 
 </th>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Background & Topic(4M)</b></td>
    <td><input type="text" name="bg_and_t2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>project Scope & Objectives(4M)</b></td>
    <td><input type="text" name="Pj_scope_n_obj2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Literature Suvey(5M)</b></td>
    <td><input type="text" name="Lit_survey2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Project Planning(4M)</b></td>
    <td><input type="text" name="Proj_plan2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Presentation Skills(4M)</b></td>
    <td><input type="text" name="Present_skill2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Question And Answers(4M)</b></td>
    <td><input type="text" name="QnA2" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    </tbody>
    </table>
    <p><b>Entry for Student 3:</b></p>
    <table>
    <tbody>
    <td><b>Roll number of the student 3</b></td>
    <th><select name="Student_Roll_No3">          
     
 <%	
	
	if(i<students.size())
	{
		Student stu_obj=new Student();
		stu_obj=students.get(i);
%>	

 <option> <%= stu_obj.getStudentId()   %>  </option>
	
<%
	i++;
	}

%>  

 </select> 
 </th>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Background & Topic(4M)</b></td>
    <td><input type="text" name="bg_and_t3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>project Scope & Objectives(4M)</b></td>
    <td><input type="text" name="Pj_scope_n_obj3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Literature Suvey(5M)</b></td>
    <td><input type="text" name="Lit_survey3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Project Planning(4M)</b></td>
    <td><input type="text" name="Proj_plan3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Presentation Skills(4M)</b></td>
    <td><input type="text" name="Present_skill3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Question And Answers(4M)</b></td>
    <td><input type="text" name="QnA3" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    </tbody>
    </table>
    <p><b>Entry for Student 4:</b></p>
 <table>
 <tbody>
    <td><b>Roll number of the student 1</b></td>
   <th><select name="Student_Roll_No4">          
     
 <%	

	
	if(i<students.size())
	{	Student stu_obj=new Student();
		stu_obj=students.get(i);
%>	

 <option> <%= stu_obj.getStudentId()   %>  </option>

<%
	}

%>  

 </select> 
 </th>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Background & Topic(4M)</b></td>
    <td><input type="text" name="bg_and_t4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>project Scope & Objectives(4M)</b></td>
    <td><input type="text" name="Pj_scope_n_obj4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Literature Suvey(5M)</b></td>
    <td><input type="text" name="Lit_survey4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Project Planning(4M)</b></td>
    <td><input type="text" name="Proj_plan4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Presentation Skills(4M)</b></td>
    <td><input type="text" name="Present_skill4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    <tr>
    <td><b>Question And Answers(4M)</b></td>
    <td><input type="text" name="QnA4" placeholder="Enter Marks" autofocus></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
    </tr>
    </tbody>
    </table>
    <table>
    </tbody>
    <p><b>Write comments</b></p>
    
    <td><b>Comments by Reviewer:</b></td>
    <td><textarea rows="5" cols="33" name="comment by reviewer" style="background: #f1f1f1;"></textarea></td>
    <tr></tr>
    <tr></tr>
    <tr></tr>
  <tr></tr>
    <tr></tr>
    <tr></tr>
    </tbody>
    </table>
  <br>
   
  <input type="submit" name="button" value="Submit Review" style="font-size: 20px;margin-top: 2%;">&emsp;&emsp;
  <input type="reset" value="Reset" style="font-size: 20px;margin-top: 2%;"><br><br>
</form>
</div>
</div> 
</div>
</div>
</div>   
</body>
</html>