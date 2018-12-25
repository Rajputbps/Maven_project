<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<style type="text/css">
th, td {
    padding: 5px;
}
form{background-color: #619bf9;}
#dd{border-style: dashed;}
.d1{background-color: #619bf9}
.add{color:#ffffff;
font-family: Freestyle Script;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<h1 class="add container">Please Select Payment option</h1>
  <div class="container d1"  >
    <br>

     <form action="${pageContext.request.contextPath}/ack"  method="post">

         <div class="well">
             <label>Payment</label><br>
             <select name="payment">
    <option value="COD">Cash on Delivery</option>
    <option value="NetBanking">Net Banking</option>
</select>
  <div><br></div>
                <input type="text" name="cardnum" placeholder="Enter your card number" style="width:70%" class="form-control"><br>
                <br>
                <input type="text" name="name" placeholder="Name on the card" style="margin-bottom:10px;width:70%" class="form-control"><br>
                   <div>
                     <table>
                       <tr><th>Expiry</th>
                        <!-- <th>&nbsp;&nbsp;&nbsp;&nbsp;</th> -->
                       <th>CVV</th></tr>

                       <tr><td>  <input type="number" min="1" max="12" name="month" placeholder="mm" style="width:50px"></td>
                        <td> <input type="number" min="1" max="12" name="year" placeholder="yy" style="width:50px"></td>
                </table>
              </div><br>
<button class="btn btn-lg btn-primary col-md-12" type="submit">PROCEED</button>
              </div><!-- inner end card number-->
         </form><br>
         </div>
          

     
</body>
</html>