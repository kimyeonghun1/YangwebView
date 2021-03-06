<%@page import="com.model.fieldVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.fieldDAO"%>

<%@page import="com.model.adminDAO"%>
<%@page import="com.model.adminVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
    <title>Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
	
	.text{
		background:#000000;
		opacity:0;
	}
	.image:hover .text{
		opacity:0.5;
		text-align:center;
		color:#ffffff;
	}
</style>
<body class="is-preload">
			<%
			//현재 로그인 상태인지 확인 (vo == null > 로그인 하지 않은 상태)
			adminVO vo = (adminVO)session.getAttribute("admin");
			adminDAO dao = new adminDAO();
			
			fieldDAO fielddao = new fieldDAO();
		 	ArrayList<fieldVO> array_field_all = fielddao.fieldAllList();
			%>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <header id="header">
                <a href="fieldlist.jsp" class="logo" style="font-size: 20px;"><strong>현장 목록</strong></a>
                <ul class="icons">
                    <li><a href="fieldAdd.jsp" class="logo"><span class="label">현장추가</span></a></li>
                    <li><a href="notice.jsp" class="logo"><span class="label"><strong>경고발생현황</strong></span></a></li>
                    <li><a href="board_list.jsp" class="logo"><span class="label">관리일지</span></a></li>


                </ul>
            </header>



            <!-- Section -->
            <section>
				<p>현장 사진을 클릭하면 메모를 확인할 수 있습니다.</p>
                <div class="posts">
                <%for(fieldVO vo1_field : array_field_all){%>
                    <article>
                        <div class="image">
								  <%if(vo1_field.getField_seq()==13){ %>
								  <img src="images/현장1.jpg" > 
								  <%}else{%>
								   <img src="images/현장 2.jpg" >
								  <%}%>
									<div class="text">
									
										<p><%=vo1_field.getField_memo() %></p>
									</div>
							</div>
                        <h3><%=vo1_field.getField_seq() %>. <%=vo1_field.getField_name() %></h3>
                        <p><%=vo1_field.getField_addr() %></p>
                        <div class="col-6 col-12-small">
                        <ul class="actions fit">
                            <li><a href="sensorValueCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button primary"
									style="margin-right: 10px;">SAFEBOX 확인</a><br><br>
									<a href="fieldUpdateCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button"
									style="margin-right: 10px;">현장 정보 수정</a><br><br>
									<a href="safeboxListCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button">설치 SAFEBOX 목록</a><br><br>
								</li>
                        </ul>
                        </div>
                    </article>
                    <%} %>
                  </div>
            </section>

        </div>
    </div>

    <!-- Sidebar -->
    <div id="sidebar">
        <div class="inner">

            <!-- Search -->
            <section id="search" class="alt">
                <form method="post" action="#">
                    <input type="text" name="query" id="query" placeholder="Search" />
                </form>
            </section>


            <nav id="menu">

                <ul>
               		 <% if(vo==null){%>
                   	 <li><a href="login.jsp">로그인</a></li>
                   	 <%}else{ %>
                     <li><a href="mypage.jsp">회원정보수정</a></li>
                     <li><a href="logoutServlet" class="logo">로그아웃</a></li>
					 <%} %>
                    
                </ul>
            </nav>

            <!-- Menu -->
            <% if(vo!=null){%>
            <nav id="menu">
                <header class="major">
                    <h2>현장 관리 메뉴</h2>
                </header>
                <ul>
                    <li><a href="fieldlist.jsp">현장 목록 </a></li>
                    <li><a href="board_list.jsp">관리 일지</a></li>
                    <li><a href="notice.jsp">경고 발생 현황</a></li>
                </ul>
            </nav>
            <%}else{%>
            <nav id="menu">
					<header class="major">
						<h2>현장 관리 메뉴</h2>
					</header>
					<ul>
						<li><a href="#">로그인이 필요합니다. </a></li>
						
					</ul>
				</nav>
				<%} %>
            
           
                    
            <section>
                <header class="major">
                    <h2>내 정보</h2>
                </header>
                	<ul class="contact">
										<% if(vo!=null){%>
										<li class="icon solid fa-envelope"><%=vo.getAdmin_email() %></li>
										<li class="icon solid fa-phone"><%=vo.getAdmin_phone() %></li>
										<li class="icon solid fa-home"><%=vo.getAdmin_dept() %></li>
										<%}else{ %>
										<li class="icon solid fa-envelope">이메일</li>
										<li class="icon solid fa-phone">전화번호</li>
										<li class="icon solid fa-home">소속</li>
										<%} %>
									</ul>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
            </footer>

        </div>
    </div>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script>
function gascheck() {	
	setInterval(() => {
		$.ajax({
			type : "get", 
			/* data : {"email" : input.value}, */
			url : "gasgasCheck", 
			dataType : "text", 
			success : function(data){
				
				if(data=="1"){
					let check = confirm("※위험※  유출 현황을 확인해주세요!!  ※위험※");
					if(check){
						window.location.href = "notice.jsp";
						
					}							
				}
			},
			error : function(){ //통신 실패
			}
		});
		
		  $.ajax({
			type : "get", 
			url : "transeService", 
			dataType : "text",
			data : {'data' : '통신 성공'},
			success : function(data){ 
				console.log(data)
			},
			error : function(){
			}
		});  
	
	}, 1000);
	
}
gascheck();
</script>
</body>

</html>