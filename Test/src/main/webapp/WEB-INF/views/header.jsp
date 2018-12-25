 <!doctype jsp>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">
@charset "ISO-8859-1";
html, body {
  min-height: 100%;
}
body{
  background: #92c7d6;
  background-image: -webkit-radial-gradient(top, circle cover, #97d0e1, #427388 80%);
  background-image: -moz-radial-gradient(top, circle cover, #97d0e1, #427388 80%);
  background-image: -o-radial-gradient(top, circle cover, #97d0e1, #427388 80%);
  background-image: radial-gradient(top, circle cover, #97d0e1, #427388 80%);
}

#quick{
  width: 5%;
  height: 5%;
  float: left;
  margin: 3%;
  border-style: inherit;
}
#p1{
  font-family: Freestyle Script;
  font-size: 300%;
  color: #ffffff;
 

}
.field{
margin-top:9%;
  border-radius: 20px;
  width: 100%;
  height: 40px;
}


/* Header */
.large-header {
	position: relative;
	width: 100%;
	background: #333;
	overflow: hidden;
	background-size: cover;
	background-position: center center;
	z-index: 1;
}
.p2{font-family: Freestyle Script;
  font-size: 300%;
   margin-top:20%;
   align:right;
  }
.st{
position:relative;

}
#large-header {
	background-image: url('https://www.marcoguglie.it/Codepen/AnimatedHeaderBg/demo-1/img/demo-1-bg.jpg');
}

<style type="text/css">
.project-details-popup .close {
  position: absolute;
  right: -25px;
  top: -25px;
  botom
}
.project-details-popup .prof-icon {
  width: 75px;
  height: 75px;
  border-radius: 50%;
  position: absolute;
  left: 0;  
  right: 0;
  margin: auto;
  top: -30px;
}
.project-details-popup .modal-header {
  margin: 0;
  padding: 0;
}
.project-details-popup .modal-header .header-img {
  width: 100%;
  max-width: 100%;
}
#back{
background-image: url("https://images.unsplash.com/photo-1504660069764-2b37e279874a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7945a4d590c31ea4887f50ab42dd6d17&auto=format&fit=crop&w=750&q=80");
}
 <%---CSS--%>
 @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

$brandBlue: #008CBA;

.login-logo,.form-container {
  margin: 0 auto;
  max-width: 25em;
  transition: all .5s ease-in-out;
}

 

.login-logo {
  padding: 1em;
  img {
    width: 100%;
    height: auto;
  }
}

.form-container {
  background: white;
  padding: 1.5em;
  border-radius: 1em;
  box-shadow: 0px 0px 1em #ddd;
  h2 { 
    margin-top: 0;
    color: $brandBlue;
  }
  .error { 
    color: red;
    margin: .5em 0;
  }
  label span { color: #d9534f ; }
  button { 
    background: $brandBlue;
    &:hover {
      background: darken($brandBlue, 5%);
    }
  }
}

html { box-sizing: border-box; }
*, :before, :after { box-sizing: inherit; }

 
 #h11{
text-align: center;
 }
 .color{
 color:white;
 }
 buttom.absolute {
    position: absolute;
    bottom: 10px;
} 
 
}

.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
	border-right:0; 
	box-shadow:0 0 0; 
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
    
}
#imaginary_container{
margin-top:5%;
margin-left: auto;
    margin-right: auto; 
    
}
#bt{
margin-right:0%;
margin-top:12%;
}
#p3{border-radius: 50%}

.dropdown-menu:li {
    text-align: left;
}

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0; 
 }
 .fa{color: #ffffff;}
</style>

<script type="text/javascript">
$(document).ready(function(){
    $("sign").click(function(){
        $("#hhh").text("Hello Admin");
    });
});
</script>
</head>
<body>
<div id="large-header" class="large-header">
        <div class="col-sm-4">
      <img id="quick" alt="Image" src='<c:url value="/resources/Q.jpeg"></c:url>' style="width: 40%"><p id="p1" > &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; Quick Delivery</div>
 
     
            <div id="imaginary_container"  class="col-sm-6 "> 
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  placeholder="Search :)" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        
   <div class="col-sm-1" id="bt">
   <button type="button"   data-toggle="modal" data-target="#myModal" id="p3"><h4 id="hhh">Login</h4></button>
   </div>
   
      
</div>
<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">


<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbarArea">

</button>

<div class="container">
<div class="navbar-header"> 
<ul class="nav navbar-nav">
<li class="active"><a href="home">Home</a></li>
<li><a href="Watches">Watches</a></li>
<li><a href="laptop">Laptop</a></li>
<li><a href="Contact_Us">Contact Us</a></li>
<li><a href="about">About</a></li>
<li><a href="#"><i class="fa fa-shopping-cart" ></i>
</a> </li>
</ul>
</div> 

 
</div>

</nav>

 
<%----Login code --%>
 
<div id="myModal" class="modal fade" role="dialog" >
  <div class="modal-dialog" >

    <!-- Modal content-->
    <div class="modal-content project-details-popup" id="back">
      <img class="prof-icon" src='<c:url value="/resources/Q.jpeg"></c:url>'>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      <div class="modal-header" >
               
	 
  
  
  <div class="form-container, off-canvas">
  <h2 id="h11">Login</h2>

    <form role="form" class="form-signin" action="login" method="post">
      

      <div class="form-group">
        <label for="EmailAddress" class="color"><span>*</span> User Id</label>
        <input type="text" class="form-control" name="EmailAddress" id="EmailAddress" aria-required="true" aria-invalid="true" required placeholder="Enter the user ID">
      </div>

      <div class="form-group">
        <label for="EmailAddress" class="color"><span>*</span> Password</label>
        <input type="password" class="form-control" name="password" id="password" aria-required="true" aria-invalid="true" required placeholder="Enter the password">
      </div>

      <div class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> <p class="color">Remember me</p>
        </label>
      </div>

      <button class="btn btn-lg btn-primary btn-block" type="submit" id="sign">Sign in</button>

    </form>
  </div>  
  
</div>
 <div class="modal-footer"> 
 <h4 style="color:red">Forget Password</h4> 
 <h4 class="color">Create new account &nbsp;&nbsp; <a href="Registration" class="color">Register</a></h4>
      </div>
      </div>
       </div>
</div>
 
</body>
</html>
 