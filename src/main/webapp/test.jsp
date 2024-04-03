<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.* , Connect.Connect , java.util.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test</title>
<link   rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >  
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
	.userLogo{
		height: 50px;
		width: 60px
	}
</style>
</head>
<body class="bg-info-subtle">



<%
	String testTpye = request.getParameter("selectTest") ;
	String sql ;
	String sql1 ;
	ArrayList<String> arrAns = new ArrayList<>();
	switch(testTpye) {
	case "HTML CSS" :
		sql = "SELECT * FROM hthlcssquestion" ;
		sql1 = "SELECT * FROM htmlcsstest" ;
		break;
	case "Javascript" :
		sql = "SELECT * FROM javascriptquestion" ;
		sql1 = "SELECT * FROM javascripttest" ;
		break;
	case "CProgram" :
		sql = "SELECT * FROM cprogramquestion" ;
		sql1 = "SELECT * FROM cprogramtest" ;
		break;
	case "Core Java" :
		sql = "SELECT * FROM javaquestion" ;
		sql1 = "SELECT * FROM javatest" ;
		break;
	case "Advance Java" :
		sql = "SELECT * FROM advancejavaquestion" ;
		sql1 = "SELECT * FROM advancejavatest" ;
		break ;
	default :
		return ;
	}
%>
	<script>
        const startMin =10;
        let times = startMin * 60;
        setInterval(updateTime, 1000);

        function updateTime() {
            const min = Math.floor(times / 60);
            let second = times % 60;
            second = second < 10 ? "0" + second : second;
            var answerTime = min + ":" +second ;
            document.getElementById('countdown').innerHTML = answerTime;
            if (times <= 0) {
                // document.getElementById('EndTestID').click();
            }
            times--;
        }
    </script>
    <div class="container">
        <div class="row  mt-2">
            <div class="col-lg-3"></div>
            <div class="col-lg-3"><p class="h5">Remaining Time : <span id="countdown">00:00</span></p></div>
            <div class="col-lg-3"></div>
            <div class="col-lg-3">
            	<div class="row">
            		<div class="col-3"></div>
		            <div class="col-3"></div>
		            <div class="col-3">
		            	<div>
		            		<%
		            		int userId = 1;
		            		String UserEmail = "abc@gmail.com" ;
		            		%>
		            		<p class="h6"><%= userId %></p>
		            		<p class="h6"><%= UserEmail %></p>
		            	</div>
		            </div>
	            	<div class="col-3">
	            		<img src="image/user-logo.png" alt="user-logo" class="userLogo">
	            	</div>
            	</div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-1"></div>
            <div class="col-10">
                <!-- <form> -->
                    <div class="row">
                    	<%
                    	if(sql != null && sql1 != null) {
                			try {
                				Connection con = Connect.myConnection() ;
                				Statement s = con.createStatement() ;
                				ResultSet rs = s.executeQuery(sql) ;
                				int srNo = 1;
                				while(rs.next())
                				{	
                					String srNoS = Integer.toString(srNo);
                					String questionNo = "q"+srNoS ;
                					int option  = 1 ;
                					String optionS ;
                    	%>
                        <div class="form-label">
                            <p class="h6"><%= rs.getString(2) %></p>
                        </div>
                        <div class="form-check">
                        	<%
                        		optionS = questionNo+"o" + Integer.toString(option) ; 
                        		option++ ; 
                        	%>
                            <input class="form-check-input" type="radio" id=<%=	optionS %> value=<%= rs.getString(3) %>  name=<%=	questionNo %> >
                            <label class="form-label"><%= rs.getString(3) %></label>
                        </div>
                        <div class="form-check">
                        	<%
                        		optionS = questionNo+"o" + Integer.toString(option) ; 
                        		option++ ; 
                        	%>
                            <input class="form-check-input" type="radio" id=<%=	optionS %> value=<%= rs.getString(4) %>   name=<%=	questionNo %> >
                            <label class="form-label" ><%= rs.getString(4) %></label>
                        </div>
                        <div class="form-check">
                        	<%
                        		optionS = questionNo+"o" + Integer.toString(option) ; 
                        		option++ ; 
                        	%>
                            <input class="form-check-input" type="radio"  id=<%=	optionS %> value=<%= rs.getString(5) %>   name=<%=	questionNo %>   >
                            <label class="form-label" ><%= rs.getString(5) %></label>
                        </div>
                        <div class="form-check">
                        	<%
                        		optionS = questionNo+"o" + Integer.toString(option) ; 
                        		option++ ; 
                        	%>
                            <input class="form-check-input" type="radio" id=<%=	optionS %> value=<%= rs.getString(6) %>   name=<%=	questionNo %>  >
                            <label class="form-label" ><%= rs.getString(6) %> </label>
                        </div>
                        <%
	                        		arrAns.add(rs.getString(7));
	                        		srNo++;
                				}
                			}catch(Exception e) {
                				out.print(e.getMessage());
                				}
	                		}else {
	                			out.print("alert('Oops...! Something is Wrong')");
	                		}
                        %>  
                    </div>
                    
                    <button onclick="score()" id="EndTestID"  class="btn btn-danger mt-4">End Test</button>
                <!-- </form> -->
            </div>
            <p style="display :none;" id="AnswerList"><%
           for(String strAns : arrAns){
        	   out.print( strAns+ "::");
           }
           %></p>
           <form action="score.jsp" method="post">
	           <input type="hidden" id= "AnswerSumS" name="AnswerSumS" >
	           <input type="submit" id="senddd" style="display:none;" >
           </form>
        </div>
    </div>
 <script type="text/javascript">
  function score(){
	  var aaaa =  document.getElementById("AnswerList").innerHTML ;
	  const arr = aaaa.split("::");
      var sum = 0;
      for(let i = 1 ; i <= arr.length-1 ; i++){
          var abc = "q"+i + "o";
          var ansValue ="E" ;
          for(let j = 1 ; j <= 4 ; j++){
              var cba = abc+j;
              if(document.getElementById(cba).checked){
                  ansValue = document.getElementById(cba).value;
                  break;
              }
          }
          if(arr[i-1] === ansValue){
              sum++;
          }

      }
      document.getElementById("AnswerSumS").value=sum ;
      console.log(document.getElementById("AnswerSumS").value);
      document.getElementById('senddd').click()
  }
  
 </script>
</body>
</html>