<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration</title>
<style type="text/css">
font-family: Freestyle Script;
  font-size: 300%;
  color: #ffffff;
body, html{
height: 100%;
background-repeat: no-repeat;
background-color: #d3d3d3;
font-family: 'Oxygen', sans-serif;
}

.main{
margin-top: 70px;
}

h1.title { 
font-size: 50px;
font-family: 'Passion One', cursive; 
font-weight: 400; 
}

hr{
width: 10%;
color: #fff;
}

.form-group{
margin-bottom: 15px;
}

label{
margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
font-size: 11px;
padding-top: 3px;
}

.main-login{
background-color: #fff;
/* shadows and rounded borders */
-moz-border-radius: 2px;
-webkit-border-radius: 2px;
border-radius: 2px;
-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

.main-center{
margin-top: 30px;
margin: 0 auto;
max-width: 330px;
padding: 40px 40px;

}

.login-button{
margin-top: 5px;
}

.login-register{
font-size: 11px;
text-align: center;
}
#success_message{ display: none;}
</style>
 
 <script type="text/javascript">
 $(document).ready(function() {
	    $('#contact_form').bootstrapValidator({
	        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            first_name: {
	                validators: {
	                        stringLength: {
	                        min: 2,
	                    },
	                        notEmpty: {
	                        message: 'Please enter your First Name'
	                    }
	                }
	            },
	             last_name: {
	                validators: {
	                     stringLength: {
	                        min: 2,
	                    },
	                    notEmpty: {
	                        message: 'Please enter your Last Name'
	                    }
	                }
	            },
				 user_name: {
	                validators: {
	                     stringLength: {
	                        min: 8,
	                    },
	                    notEmpty: {
	                        message: 'Please enter your Username'
	                    }
	                }
	            },
				 user_password: {
	                validators: {
	                     stringLength: {
	                        min: 8,
	                    },
	                    notEmpty: {
	                        message: 'Please enter your Password'
	                    }
	                }
	            },
				confirm_password: {
	                validators: {
	                     stringLength: {
	                        min: 8,
	                    },
	                    notEmpty: {
	                        message: 'Please confirm your Password'
	                    }
	                }
	            },
	            email: {
	                validators: {
	                    notEmpty: {
	                        message: 'Please enter your Email Address'
	                    },
	                    emailAddress: {
	                        message: 'Please enter a valid Email Address'
	                    }
	                }
	            },
	            contact_no: {
	                validators: {
	                  stringLength: {
	                        min: 12, 
	                        max: 12,
	                    notEmpty: {
	                        message: 'Please enter your Contact No.'
	                     }
	                }
	            },
				 
	                }
	            }
	        })
	        .on('success.form.bv', function(e) {
	            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
	                $('#contact_form').data('bootstrapValidator').resetForm();

	            // Prevent form submission
	            e.preventDefault();

	            // Get the form instance
	            var $form = $(e.target);

	            // Get the BootstrapValidator instance
	            var bv = $form.data('bootstrapValidator');

	            // Use Ajax to submit form data
	            $.post($form.attr('register'), $form.serialize(), function(result) {
	                console.log(result);
	            }, 'json');
	        });
	});
 </script>
 

 
</head>
<body>
 
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <div class="container">

    <form:form class="well form-horizontal" action="register" method="post"  id="contact_form" modelAttribute="user">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  name="first_name" placeholder="First Name" class="form-control"  type="text" path="first_name"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input name="last_name" placeholder="Last Name" class="form-control"  type="text" path="last_name"/>
    </div>
  </div>
</div>

 <div class="form-group">
  <label class="col-md-4 control-label" >DOB</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input name="date" class="form-control"  type="date" path="dob"/>
    </div>
  </div>
</div>
  
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Username</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  name="user_name" placeholder="Username" class="form-control"  type="text" path="user_name"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input name="user_password" placeholder="Password" class="form-control"  type="password" path="user_password"/>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Confirm Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password" path="confirn_password"/>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <form:input name="email" placeholder="E-Mail Address" class="form-control"  type="text" path="e_mail"/>
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <form:input name="contact_no" placeholder="(91)" class="form-control" type="text" path="contact_no"/>
    </div>
  </div>
</div>

<!-- Select Basic -->

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>

</fieldset>
</form:form>
</div>
    </div>
</body>
</html>	