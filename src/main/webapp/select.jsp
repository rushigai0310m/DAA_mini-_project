<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link   rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >  
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script>
        function getSelectedValue() {
            var sub = document.getElementById("subSelect");
            var SubType = sub.value;
            document.getElementById("writeSubject").textContent = SubType;
        }
        function confirmFunction() {
            alert("Ready for Test");
        }
    </script>
    <style>
    	.nextPage{
    		height: 5px ;
    		width: 27px ;
    		color: white ;
    		background-color: black ;
    		padding: 12px ;
    		border-radius: 11px;
    		margin-top: 10px;
    	}
    </style>
</head>
<body class="bg-dark-subtle">
<% 
String id = session.getAttribute("userID").toString() ;
String mail = session.getAttribute("userEmail").toString();
String name = session.getAttribute("userName").toString() ;
%>
    <div class="container">
        <div class="row mt-5">
            <p class="h1">Hello <%= name %> Welcome to Online Test</p>
        </div>
        <div class="row mt-5">
            <div class="col-lg-3">

            </div>
            <div class="col-lg-4">
                <form action="test.jsp" method="post">
                    <div class="mb-3">
                        <label  class="form-label"></label>
                        <select class="form-select" id="subSelect" name="selectTest" onmouseout="getSelectedValue()">
                            <option>Select</option>
                            <option value="HTML CSS">HTML CSS</option>
                            <option value="Javascript">Javascript</option>
                            <option value="CProgram">C-Programming</option>
                            <option value="Core Java">Core Java</option>
                            <option value="Advance Java">Advance Java</option>
                        </select>
                    </div>
                    <div class="mb-3 mt-5">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" />Ready for <span id="writeSubject"></span> Test
                    </div>
                    </div>
                    <div class="mb-3 mt-5">
                    	<div class="row">
	                    	<div class="col-3"></div>
	                    	<div class="col-3"><button type="submit" onclick="confirmFunction()" class="btn btn-primary">Test</button></div>
	                    	<div class="col-3"></div>
	                    	<div class="col-3"></div>
                    	</div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</body>
</html>