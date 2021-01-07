<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Font Icon -->
    <link rel="stylesheet" href="fonts3/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor3/jquery-ui/jquery-ui.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css3/style.css">
<meta charset="ISO-8859-1">
<title>Schudling</title>

<h1>IELTS</h1>

                        
                        <a class="nav-link" href="http://localhost:8080/IELTS/adminindex.jsp">Back</a>
              
</head>
<body>


<div class="main">
        
        <div class="header">
            <img src="images/header-text.png" alt="">
            <img src="images/dots.png" alt="">
        </div>
        <div class="container">
            <form action="examdate" id="booking-form" class="booking-form" method="post">
             <div class="form-date-from form-icon">
                        <label for="date_from">Exam Date</label>
                        <input type="text" id="date_from" name="date" class="date_from" placeholder="Pick a date" />
                        <!-- <span class="icon"><i class="zmdi zmdi-calendar-alt"></i></span> -->
                    </div>
                <div class="form-group">
                    <div class="form-destination">
                        <label for="destination">Exam Type</label>
                        <select  id="destination" name="type" placeholder="Type"/>
                        <option value="">select</option>
                        <option value="acadamic">Acadamic</option>
                        <option value="general">General</option>
                       </select>
                    </div>
                    <div class="form-submit">
                        <input type="submit" id="submit" class="submit" value="Update" />
                    </div>
                </div>
            </form>
        </div>

    </div>
     <!-- JS -->
    <script src="vendor3/jquery/jquery.min.js"></script>
    <script src="vendor3/jquery-ui/jquery-ui.min.js"></script>
    <script src="js3/main.js"></script>
</body>
</html>