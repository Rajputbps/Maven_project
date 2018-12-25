<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Watches</title>
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
height: 190px;
}

.dd1{border: groove;
border-color: red;
}
.iii{margin: 2%;padding-top: 2%; border: dotted; height: 190px;
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
           <div class="col-md-3 d2 "> <div class="iii"><a href="#"><img alt="Dell" src="http://cdn2.chrono24.com/images/uhren/images_58/s2/7562258gross.jpg?v=1" class="img-fluid im1">
           </a>
            </div>
            <div class="container_fluid dp"> <p class="p1">Romain Jerome Titanic-DNA</p>
           <p class="p1">Price: 2,000\-Rs.</p></div> 
           </div>
           
           
               <div class="col-md-3 d2"  ><div class="iii"><a href="producDetail"><img alt="Dell" src="https://sc01.alicdn.com/kf/HTB1Lpv0RFXXXXXKXFXXq6xXFXXXX/high-quality-stainless-steel-megir-top-watch.jpg_350x350.jpg" class="img-fluid im1"> </a> </div>
               <div class="container_fluid dp"> <p class="p1">Fastrack</p>
           <p class="p1">Price: 3,500\-Rs.</p></div> </div>
               
               
               <div class="col-md-3 d2"  > 
               <div class="iii"><a href="producDetail"><img alt="Dell" src="https://images-na.ssl-images-amazon.com/images/I/71Ljyp3oicL._UX342_.jpg" class="img-fluid im1"> </a> </div>
               <div class="container_fluid dp"> <p class="p1">Winner</p>
           <p class="p1">Price: 3,600\-Rs.</p></div> 
               </div>
               
               
               <div class="col-md-3 d2"  > <div class="iii"><a href="producDetail"><img alt="Dell" src="https://mycheapwatches.com/wp-content/uploads/2017/03/912-4954202cde6fd91e2767ceee6341a02d.jpg" class="img-fluid im1"> </a> </div>
                <div class="container_fluid dp"> <p class="p1">Winner Gold</p>
           <p class="p1">Price: 1,000\-Rs.</p></div> 
           </div>
               </div>
         
</div>
</div>

 <center><footer><div class="container_fluid text-muted">e-commerce site @Copyright by .....</div> </footer></center>
</body>
</html>