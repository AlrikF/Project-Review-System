<%@page import="com.login.Group"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
      .grid {
  display: grid;
  grid-template-columns: repeat(3, 2fr);
  justify-items: center;
  align-items: center;
  grid-gap: 60px;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
  background-color: transparent;
  width: 250px;
  height: 250px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
.dropbtn {
  background-color: #040C87;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #AAADD6;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #34038F ;}
</style>
<style>
    .sec {
      width: 1100px;
      padding: 10px;
      border: 5px solid gray;
      margin: 0;
    }
    </style>
<style>
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      background-color:#040C87;
    }
    
    li {
      float: left;
    }
    
    li a {
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }
    li a:hover {
      background-color:#AAADD6;
    
  }
  </style>
  <style>
 .clearfix {
  overflow: auto;
}

</style>
<head>
  <title>Homepage</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- Material Kit CSS -->
  <link href="assets/css/material-kit.css?v=2.0.6" rel="stylesheet" />
</head>

<body>
  <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
        <li><a href="">gddgdgd</a></li>
        <li><a href="">Back</a></li>
        <li><a href="">egtegedgf</a></li>
        <li style="float:right"><a class="active" href="">About</a></li>
      </ul>
  <div class="page-header header-filter" data-parallax="true" style="background-image: url('assets/img/img1.jpg')">
    <div class="container">
      <div class="row">
        <div class="col-md-8 ml-auto mr-auto">
          <div class="brand text-center">
            <h1><b>Project Based Seminar</b></h1>
            <h1 class="title text-center">Guide's Page</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <%
  ArrayList<Group> groups=(ArrayList<Group>)request.getAttribute("Groups_under_guide");
  
  %>
  
  <script type="text/javascript">
            function callServlet( k,r) 
            {
            	if(r==1)
            	{
                	document.forms[0].action = "Form_submit?Id="+k+"&button=Guide_group_home";
                	document.forms[0].submit();
            	}
            }
 </script>
  
 <form action="Form_submit" method="post">
  <div class="main main-raised">
    <div class="container">
      <div class="section text-center">
        <h2 class="title">Groups under you</h2>
  <section id="team">
    <div class="grid">
      <!-- #str heroes -->
      <!-- #abaddon -->




<% 
	
	for(int i=0;i<groups.size();i++)
	{
		Group grp_obj=new Group(); 
		grp_obj=groups.get(i);
		int k=grp_obj.getGroup_id();
%>	
      <div class="flip-card" onclick="callServlet(<%=grp_obj.getGroup_id()%>,1);">
  <div class="flip-card-inner">
    <div class="flip-card-front">
            <img src="Pics/download1.jpg" alt="Avatar" style="width:250px;height:250px;" />
          </div>
          <div class="flip-card-back">
           
           <font size=4px> 
           Group Id:<%=grp_obj.getGroup_id() %><br>
           	Project Title:<%=grp_obj.getProblem_title() %><br>
            Project Area:<%=grp_obj.getProj_area() %><br><br>
            Project Platform:<%=grp_obj.getProject_platform() %><br>
            </font>
           
        </div>
       <font size="5"><b>Group 1</b></font>
      </div>
      

    </div>
<%
	System.out.println(grp_obj.getGroup_id());
	System.out.println(grp_obj.getProject_platform());
	}
%>    
    
    
</section>
</div>
</div>
</div>


</form>
  <br><br><br>
  <div class="main main-raised">
    <div class="container">
      <div class="section text-center">
        <h2 class="title">Select your Group</h2>
        <div class="dropdown">
     <button class="dropbtn">Group numbers</button>
       <div class="dropdown-content">
           <a href="#">Group 1</a>
           <a href="#">Group 2</a>
           <a href="#">Group 3</a>
       </div>
    </div>
      </div>
    </div>
  </div>
  <footer class="footer footer-default">
    <p>dehhdhhduhuusfhshfsdfifsfu</p>
  </footer>
</body>

</html>
