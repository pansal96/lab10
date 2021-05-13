<%@page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item management</title>



<link rel="stylesheet" href="views/css/bootstrap.min.css">
<script src="compontent/jquery-3.2.1.min.js"></script>
<script src="compontent/items.js"></script>



</head>
<body>



	<div class="container">
		<div class="row">
			<div class="col">


                     <h1>Items Management V10.1</h1>


				<form id="formItem" name="formItem" >
					Item code: 
					<input id="itemCode" name="itemCode" type="text"
						class="form-control form-control-sm"> <br> 
						
					Item name:
					<input id="itemName" name="itemName" type="text"
						class="form-control form-control-sm"> <br>
						
				    Item price: <input id="itemPrice" name="itemPrice" type="text"
						class="form-control form-control-sm"> <br> 
						
					Item description: <input id="itemDese" name="itemDese" type="text"
						class="form-control form-control-sm"> 
						
						<br>
						 <input id="btnSave" name="btnSave" type="button" value="Save"
						        class="btn btn-primary"> 
						 <input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>

                  <div id="alertSuccess" class="alert alert-success"></div>
                  <div id="alertError" class="alert alert-danger"></div>
                   <br>
                  
                
                <div id="divItemsGrid">
				<%
					Item itemObj = new Item();
				    out.print(itemObj.readItems());
				 %>

                </div>


				      </div>
					</div>
				</div>
</body>
</html>