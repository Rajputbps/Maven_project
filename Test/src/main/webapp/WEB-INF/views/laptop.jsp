<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laptop</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
.d1{
border: double;
width: 100%;
height: 50%;
border-color: green;
}
.d2{
 
height: 300px;
border: dotted;
column-gap: 24px;
background-color: #ffffff;
}
.r1{padding-left: 2%;
	padding-right: 2%;
	margin-bottom: 1%;
	
}

._2h{font-size: 20px;}

.im1{max-width:100%;
height:auto;}

.dd1{border: groove;
border-color: red;
}
.iii{margin: 2%;padding-top: 2%;
}
.p1{color: blue; padding-left: 1%;}
p2{ font-family:sans-serif;
 
 }
 .dp{padding-top: 12%; border:dotted;}
 btn1{width: 100%;}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
<div class="d1">
<div class=" row ">
  
</div>
<hr>
 <div class="row r1">
           <div class="col-md-3 d2 "> <div class="iii"><a href="producDetail"><img alt="Dell" src="https://d2pa5gi5n2e1an.cloudfront.net/global/images/product/laptops/Dell_Inspiron_11_3168/Dell_Inspiron_11_3168_L_1.jpg" class="img-fluid im1">
           </a>
            </div>
            <div class="container_fluid dp"> <p class="p1">Dell Inspiron 11-3168</p>
           <p class="p1">Price: 40,000\-Rs.</p></div> 
           </div>
           
           
               <div class="col-md-3 d2"  ><div class="iii"><a href="producDetail"><img alt="Dell" src="https://icdn4.digitaltrends.com/image/dell-xps-13-screen-lid1-1500x1000.jpg" class="img-fluid im1"> </a> </div>
               <div class="container_fluid dp"> <p class="p1">Dell XPS 13 9370</p>
           <p class="p1">Price: 73,254\-Rs.</p></div> </div>
               
               
               <div class="col-md-3 d2"  > 
               <div class="iii"><a href="producDetail"><img alt="Dell" src="https://www.91-img.com/pictures/laptops/dell/dell-15r-5521-core-i3-3rd-gen-4-gb-500-gb-windows-8-2-gb-40073-large-1.jpg" class="img-fluid im1"> </a> </div>
               <div class="container_fluid dp"> <p class="p1">Dell Inspiron 15R 5521</p>
           <p class="p1">Price: 41,000\-Rs.</p></div> 
               </div>
               
               
               <div class="col-md-3 d2"  > <div class="iii"><a href="producDetail"><img alt="Dell" src="https://4.imimg.com/data4/JB/KM/MY-10647826/dell-latitude-e6440-500x500.jpg " class="img-fluid im1"> </a> </div>
                <div class="container_fluid dp"> <p class="p1">Dell - Inspiron</p>
           <p class="p1">Price: 40,800\-Rs.</p></div> 
           </div>
               </div>
         
</div>
</div>





 <center><footer><div class="container_fluid text-muted">e-commerce site @Copyright by .....</div> </footer></center>
</body>
</html>