<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="zxx">
   <head>
      <title>Item Order Form Responsive Widget Template :: w3layouts</title>
      <!-- Meta tag Keywords -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta charset="UTF-8" />
      <meta name="keywords" content="Item Order Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
         />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!-- Meta tag Keywords -->
      <!-- css files -->
      <link rel="stylesheet" href="res/css/style.css" type="text/css" media="all" />
      <!-- Style-CSS -->
      <!-- Font-Awesome-Icons-CSS -->
      <!-- //css files -->
      <!-- web-fonts -->
      <link href="//fonts.googleapis.com/css?family=Ubuntu:400,500" rel="stylesheet">
      <!-- //web-fonts -->
   </head>
   <body>
   <% String cid=request.getParameter("id");
   String cname=request.getParameter("cn");     		
%>
      <!-- title -->
      <h1 class="header-w3ls">Enter the Scores</h1>
      <!-- //title -->
      <!-- content -->
      <div class="porduct-order-agile">
         <form action="genr.jsp" method="post">
            
            <div class="main">
               <div class="form-left-to-w3l">
                  <p>Catagory</p>
                  <input type="text" name="cat" value="Listening" readonly  placeholder="" required="">
               </div>
               <div class="form-left-to-w3l">
                  <p>Scores</p>
                  <input type="text" name="score"   placeholder="" required="">
               </div>
            </div>
            <input type="hidden" name=id value=<%=cid%>>
							 <input type="hidden" name=cname value=<%=cname%>>
            <div class="main">
               <div class="form-left-to-w3l">
                  
                  <input type="text" name="cat1" value="Speaking" readonly  placeholder="" required="">
               </div>
               <div class="form-left-to-w3l">
                  
                  <input type="text" name="score1" placeholder="" required="">
               </div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  
                  <input type="text" name="cat2" value="Reading" readonly  placeholder="" required="">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                  
                  <input type="text" name="score2" placeholder="" required="">
                  <div class="clear"></div>
               </div>
            </div>
            <div class="main">
               <div class="form-left-to-w3l">
                  
                  <input type="text" name="cat3" value="Writing" readonly  placeholder="" required="">
                  <div class="clear"></div>
               </div>
               <div class="form-left-to-w3l">
                 <input type="text" name="score3" placeholder="" required=""> 
                  
               </div>
            </div>
            
              
           
            <button type="submit" class="btn btn-primary">Submit</button>
         </form>
      </div>
      
   </body>
</html>