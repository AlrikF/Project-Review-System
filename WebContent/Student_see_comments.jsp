<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.login.group_review1"%>
<%@page import="com.login.All_login"%>
<%@page import="com.login.QueriesDao"%>
<%@page import="com.login.Student"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">

<style>
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
.grid {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  justify-items: center;
  align-items: center;
  grid-gap: 10px;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  height: 400px;
  width: 700px;
  border-radius: 5px;
 color:rgb(0,0,0);
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
  border-radius: 5px 5px 0 0;
}
.button {
  background-color:  #003153; 
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {border-radius: 8px;}
</style>
<head>
	<meta charset="ISO-8859-1">
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
                      Project Based Seminar
                    </a>
                </div>
                <ul class="nav">
                   <li class="nav-item active">
                        <a class="nav-link" href="Student_info.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Info for students</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Group_notifications.jsp">
                            <i class="nc-icon nc-icon nc-bell-55"></i>
                            <p>Notifications</p>
                        </a>
                    </li>
                    
                    <li>
                        <a class="nav-link" href="Group_upload_details.jsp">
                            <i class="nc-icon nc-icon nc-single-02"></i>
                            <p>Upload Group Details</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="student_upload1.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Review one upload</p>
                        </a>
                    </li>
                   <li>
                        <a class="nav-link" href="student_upload2.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Review two upload</p>
                        </a>
                    </li> 
                     <li>
                        <a class="nav-link" href="Student_see_comments.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>See comments</p>
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
                                
                                    <span class="d-lg-none">Notification</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Your review is scheduled from fjsjf</a>
                                    <a class="dropdown-item" href="#">Notification 2</a>
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
                    <font size="5" align="center"><b>Your Comments</b></font><br>
					<font size="5" align="left"><b>Review 1</b></font>
 					
    <div class="grid">  
    <div class="card">
    <div class="container">   
    <h3 align="center"><b>Reviewer</b></h3>          
	<%
	QueriesDao qdao =new QueriesDao();
	ArrayList<group_review1> comments=qdao.student_see_comments((Integer)session.getAttribute("Student_group"));
	Integer count=0;
	for(int i=0;i<comments.size();i++)
	{
		group_review1 seecom_obj= new group_review1();
		seecom_obj=comments.get(i);
		count++;
%>
	<h4><%=seecom_obj.getReviewer_comments() %>
  </h4>
  <% 
	}
%>
<% 
	if(count==0)
	{
%>	
<h3>No comments yet!!</h3>
	
<% 		
	}
%>
</div>
</div>
</div> 


                    </div>
                </div>
            </div>
            <footer class="footer">
                <div class="container-fluid">
                    <nav>
                        <ul class="footer-menu">
                            <li>
                                <a href="#">
                                    Home
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Company
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Portfolio
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Blog
                                </a>
                            </li>
                        </ul>
                        
                    </nav>
                </div>
            </footer>
        </div>
    </div>

   

 


</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="../assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="../assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/js/demo.js"></script>

</html>
    