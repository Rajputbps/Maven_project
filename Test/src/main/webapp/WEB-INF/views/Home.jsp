<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 
<script>
$('#bs4-multi-slide-carousel').carousel({
  interval: 2000
})
</script>
 
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
 
 .ggg{
  float: right;
  padding-top: 2px;
}
.cc{border: double;}
.vvvv{width: 100%;
height: 400px;
}
.aaa{height: 200px;
}
.rr{color: #fff600;
padding-left: 5%;
}
.view1{object-fit: cover;}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
 <div class="container">


    <div id="carousel-example" class="carousel slide view1" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example" data-slide-to="1"></li>
    <li data-target="#carousel-example" data-slide-to="2"></li>
    <li data-target="#carousel-example" data-slide-to="3"></li>
  </ol>

  <div class="carousel-inner vvvv">
    <div class="item active">
      <a href="#"><img class="img-responsive center-block view1" src="https://mycheapwatches.com/wp-content/uploads/2017/03/912-4954202cde6fd91e2767ceee6341a02d.jpg" ></a>
      <div class="carousel-caption">
        <h3>Winner</h3>
       
      </div>
    </div>
    <div class="item">
      <a href="#"><img class="img-responsive center-block img-rounded views1"  alt="Image" src='https://4.imimg.com/data4/JB/KM/MY-10647826/dell-latitude-e6440-500x500.jpg ' ></a>
      <div class="carousel-caption">
        <h3>Dell - Inspiron</h3>
       
      </div>
    </div>
    <div class="item">
      <a href="#"><img class="img-responsive img-rounded view1  center-block"  alt="Image" src='http://img.fkcdn.com/image/watch/3/n/x/nf38016pl02j-fastrack-original-imaef4ycdgzedzms.jpeg' ></a>
      <div class="carousel-caption">
        <h3>FASTRACK NF38016PL02</h3>
        
      </div>
    </div>
     <div class="item">
      <a href="#"><img class="img-responsive img-rounded"  alt="Image" src='https://icdn4.digitaltrends.com/image/dell-xps-13-screen-lid1-1500x1000.jpg'></a>
      <div class="carousel-caption">
        <h3>Dell XPS</h3>
      </div>
    </div>
  </div>

  <a class="left carousel-control" href="#carousel-example" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>

 


</div><br><br>
  <div class="container  cc">
<div class="row">
    <div class="col-md-6"> <h2>Latest</h2></div>
    <div class="col-md-6"><a href="watch" class="btn-primary btn ggg">View All</a></div>
</div><hr>
           <div class="row">
           <div class="col-md-3 "><img src="http://cdn2.chrono24.com/images/uhren/images_58/s2/7562258gross.jpg?v=1" alt="1 slide" class=" aaa " >
            <a href="producDetail" class="rr">Romain Jerome Titanic-DNA</a>
            <p class="rr">Price : 2,000\- Rs.</p>
           </div>
               <div class="col-md-3"  ><img src="https://images-na.ssl-images-amazon.com/images/I/71Ljyp3oicL._UX342_.jpg"  alt="2 slide" class="aaa">
                <a href="producDetail" class="rr">Winner</a>
            <p class="rr">Price : 3,600\- Rs.</p>
               </div>
               <div class="col-md-3"  ><img src="https://sc01.alicdn.com/kf/HTB1Lpv0RFXXXXXKXFXXq6xXFXXXX/high-quality-stainless-steel-megir-top-watch.jpg_350x350.jpg"alt="3 slide" class="aaa">
                <a href="producDetail" class="rr">Fastrack </a>
            <p class="rr">Price : 3,500\- Rs.</p>
               </div>
               <div class="col-md-3"  ><img src="https://mycheapwatches.com/wp-content/uploads/2017/03/912-4954202cde6fd91e2767ceee6341a02d.jpg"alt="3 slide" class="aaa">
                <a href="producDetail" class="rr">Winner Gold </a>
            <p class="rr">Price : 1,000\- Rs.</p>
               </div>
           </div>
    </div><br><br>
      <div class="container  cc">
<div class="row">
    <div class="col-md-6"> <h2>Latest</h2></div>
    <div class="col-md-6"><a href="laptop" class="btn-primary btn ggg">View All</a></div>
</div><hr>
           <div class="row">
           <div class="col-md-3 "><img src="https://d2pa5gi5n2e1an.cloudfront.net/global/images/product/laptops/Dell_Inspiron_11_3168/Dell_Inspiron_11_3168_L_1.jpg" class=" aaa " >
            <a href="producDetail" class="rr">Dell Inspiron 11-3168</a>
            <p class="rr">Price: 33,000\- Rs.</p>
           </div>
               <div class="col-md-3"  ><img src="https://www.91-img.com/pictures/laptops/dell/dell-15r-5521-core-i3-3rd-gen-4-gb-500-gb-windows-8-2-gb-40073-large-1.jpg"  alt="2 slide" class="aaa">
                <a href="producDetail" class="rr">Dell Inspiron 15R 5521</a>
            <p class="rr">Price: 41,500\- Rs.</p>
               </div>
               <div class="col-md-3"  ><img src="https://icdn4.digitaltrends.com/image/dell-xps-13-screen-lid1-1500x1000.jpg0"alt="3 slide" class="aaa">
               <a href="producDetail" class="rr">Dell XPS 13 9370 </a>
            <p class="rr">Price:73254\- Rs.</p>
               
               </div>
               <div class="col-md-3"  ><img src="https://4.imimg.com/data4/JB/KM/MY-10647826/dell-latitude-e6440-500x500.jpg "alt="3 slide" class="aaa">
                 <a href="producDetail" class="rr">Dell - Inspiron  </a>
            <p class="rr">Price: 40,800\- Rs.</p>
               </div>
           </div>
    </div>
    
<br><br><br><br><br><br>
  <center><footer><div class="container_fluid text-muted">e-commerce site @Copyright by .....</div> </footer></center>
</body>
</html>