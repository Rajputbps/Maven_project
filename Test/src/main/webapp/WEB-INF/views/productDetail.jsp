<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix ="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
var $star_rating = $('.star-rating .fa');

var SetRatingStar = function() {
  return $star_rating.each(function() {
    if (parseInt($star_rating.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
      return $(this).removeClass('fa-star-o').addClass('fa-star');
    } else {
      return $(this).removeClass('fa-star').addClass('fa-star-o');
    }
  });
};

$star_rating.on('click', function() {
  $star_rating.siblings('input.rating-value').val($(this).data('rating'));
  return SetRatingStar();
});

SetRatingStar();
$(document).ready(function() {

});
</script>


<style type="text/css"> 
.star-rating {
  line-height:32px;
  font-size:1.25em;
}

.star-rating .fa-star{color: blue;}
.d1{height: 100%; width: 100%; border-style: inset; border: outset;  }
.d2{height: 350px;width: 100%; border: inset; padding-top: 2%;margin: 2%;}
.btn{width: 100%;}
.p1{font-size: 30px; color: #ffffff;}
.p21{color: #ffffff; font-size: 15px;}
.p22{color: yellow; font-size: 20px;}
.dd1{padding-left: 5%;}
</style>
</head>



<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<script type="text/javascript">$(document).ready(function(){
    //-- Click on detail
    $("ul.menu-items > li").on("click",function(){
        $("ul.menu-items > li").removeClass("active");
        $(this).addClass("active");
    })

    $(".attr,.attr2").on("click",function(){
        var clase = $(this).attr("class");

        $("." + clase).removeClass("active");
        $(this).addClass("active");
    })
    </script>
<div class="container">
<div class="d1 col-md-5">
 
<div class="d2">
<img alt="img" src='<c:out value="${product.img_name }"></c:out>'>
</div>
</div>
<div class="d1 col-md-7"><div class="d2">
<div ><p class="p1"><c:out value="${product.name }"></c:out></p><p class="p21">by quick delivery</p></div>
<div class="row">
    <div class="col-lg-12">
      <div class="star-rating">
        <span class="fa fa-star-o" data-rating="1"></span>
        <span class="fa fa-star-o" data-rating="2"></span>
        <span class="fa fa-star-o" data-rating="3"></span>
        <span class="fa fa-star-o" data-rating="4"></span>
        <span class="fa fa-star-o" data-rating="5"></span>
        <input type="hidden" name="whatever1" class="rating-value" value="2.56">
      </div>
    </div>
  </div><hr>
  <div class="row dd1"><p>Stock: Only <c:out value="${Product.stock }"></c:out> items </p>
  </div>
  <div class="row p22 dd1"><p>Price : <c:out value="${product.price }"></c:out> </p>
  </div>
  <div class="row dd1"><p>Description : <c:out value="${product.description }"></c:out> </p>
  </div>
</div>
<div class="col-md-6">
<a href="payment" type="button" class="btn btn-primary btn">Buy</a> </div>
<div class="col-md-6"><a href="addCart" type="button" class="btn btn-success btn">Add To Cart</a> </div>
</div>
 
</div>
</body>
</html>