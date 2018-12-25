<!DOCTYPE html>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style media="screen">
  a{color: blue;
  text-align: center;
font-size: 20px;
font-family: Algerian}
.h{color: blue;
 .ll{color:#ff5fff;}
font-family: Algerian}
</style>
  </head>
  <body>
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<center> <h1 class="h"><u>Admin</u></u></h1></center>

 
<div class="container">
  <div class="row" id="addpro">
          <div class="panel with-nav-tabs panel-primary">
              <div class="panel-heading">
  <div class="panel-heading">
          <ul class="nav nav-tabs">
              <li class="col-md-4 active"><a href="#tab1primary" data-toggle="tab" class="ll">Category</a></li>
              <li class="col-md-4"><a href="#tab2primary" data-toggle="tab" class="ll">Supplier</a></li>
              <li class="col-md-4"><a href="#tab3primary" data-toggle="tab" class="ll">Product</a></li>
          </ul>
  </div>
  <div class="panel-body">
  <div class="tab-content">
          <div class="tab-pane fade in active" id="tab1primary">

           <form  method="post"  action="saveCat" class="form-signin">
  <span id="reauth-email" class="reauth-email"></span>
  <h4 class="input_title">Category Id :</h4>
  <input class="form-control" type="number" name="cid" placeholder="Enter the Category Id"  required/>
  <h4 class="input_title">Category Name :</h4>
              <input class="form-control" type="text" name="name" placeholder="Enter the Category Name"  required/><br><br>
  <button class="btn btn-lg btn-primary col-md-6" type="submit">Save</button>
   <button class="btn btn-lg btn-primary col-md-6" type="reset">Cancel</button>

  </form>
          </div>

          <div class="tab-pane fade " id="tab2primary">

           <form  method="post"  action="saveSupp" class="form-signin">
  <span id="reauth-email" class="reauth-email"></span>
  <h4 class="input_title">Supplier Id :</h4>
  <input class="form-control" type="number" name="sid"  placeholder="Enter the Supplier Id" required/>
  <h4 class="input_title">Supplier Name :</h4>
              <input class="form-control" type="text" name="supplierName" placeholder="Enter the Supplier Name" required/><br><br>
  <button class="btn btn-lg btn-primary col-md-6" type="submit">Save</button>
   <button class="btn btn-lg btn-primary col-md-6" type="reset">Cancel</button>

  </form>
          </div>
           <div class="tab-pane fade " id="tab3primary">

           <form  method="post"  action="saveProduct" class="form-signin" enctype="multipart/form-data">
  <span id="reauth-email" class="reauth-email"></span>
   <h4 class="input_title">Product Name :</h4>

    <input class="form-control" type="text" name="pName" placeholder="Enter the Product Name"  required/>
 <h4  class="input_title">Product Price :</h4>
   <input class="form-control" type="text" name="pPrice" placeholder="Enter the Product Price"  required/>


 <h4  class="input_title">Product Description :</h4>
   <input class="form-control" type="text" name="pDescription"  placeholder="Enter the Product Description " required/>


  <h4  class="input_title">Product Stock :</h4>
  <input class="form-control"  type="text" name="pStock" placeholder="Enter the Product Stock"   required/>

  <div class="form-group">
  <h4> Select Category :</h4>
   <select class ="form-control" name="pCategory" required>
     <option value="">---Category---</option>
     <c:forEach items="${catList}" var="cate">
       <option value="${cate.c_Id }">${cate.name}</option></c:forEach></select>
  </div>
  <div class="form-group">
  <h4> Select Supplier :</h4>
  <select class ="form-control" name="pSupplier" required>
     <option value="">---Supplier---</option>
     <c:forEach items="${satList}" var="sate">
       <option value="${sate.sid }">${sate.supplierName}</option></c:forEach></select>
  </div>

  <div class="fileinput fileinput-new " data-provides="fileinput">
  <h4>Image :</h4>
  <input class="form-control " type="file" name="file" accept="image/*">
  </div>

 <br>
     <button class="btn btn-lg btn-primary col-md-6" type="submit">Save</button>
   <button class="btn btn-lg btn-primary col-md-6" type="reset">Cancel</button>

  </form>
          </div>

  </div>
  </div>
  </div>
  </div>
  </div>

  </div>

  <br/>

  <div><br/><br/><br/>
 <form action="productlist" method=" post"> <button type="submit" class="btn btn-primary btn-lg btn-block">Product List</button></form>
  </div>
  <br><br><br><br><br><br>
  <footer><div class="container_fluid text-muted">e-commerce site @Copyright by .....</div> </footer>
  </body>
</html>
