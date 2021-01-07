<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tab/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tab/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tab/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tab/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tab/css/util.css">
	<link rel="stylesheet" type="text/css" href="tab/css/main.css">
<!--===============================================================================================-->

</head>
<body>
<%@ page import="java.util.*" %>



  
<center><h3>LIST OF CANDIDATE</h3></center>
<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
<div class="table100 ver4 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ApplicationID</th>
									<th class="cell100 column2">CandidateName</th>
									<th class="cell100 column2">Score</th>
									<!-- <th class="cell100 column3">Hours</th>
									<th class="cell100 column4">Trainer</th>
									<th class="cell100 column5">Spots</th> -->
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<% List list = (List)session.getAttribute("list");

	if(list != null){
		for(int i=0;i<list.size();i++){
			Map map = (Map)list.get(i);
%>
								<tr class="row100 body">
									<td><%=map.get("Application_id")%></td>
                                    <td><%=map.get("Cname")%></td>
                                    <td><%=map.get("Score") %></td>
									
								</tr>

					<%}} %>			
							</tbody>
						</table>
					</div>
				</div>
				</div>
				</div>
				</div>
<!--===============================================================================================-->	
	<script src="tab/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="tab/vendor/bootstrap/js/popper.js"></script>
	<script src="tab/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="tab/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="tab/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="tab/js/main.js"></script>



</body>
</html>