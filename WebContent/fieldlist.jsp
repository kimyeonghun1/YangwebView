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
			//���� �α��� �������� Ȯ�� (vo == null > �α��� ���� ���� ����)
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
                <a href="fieldlist.jsp" class="logo" style="font-size: 20px;"><strong>���� ���</strong><br>���� ������ ���콺�� �ø��� �޸� Ȯ���� �� �ֽ��ϴ�.</a>
                <ul class="icons">
                    <li><a href="fieldAdd.jsp" class="logo"><span class="label">�����߰�</span></a></li>
                    <li><a href="notice.jsp" class="logo"><span class="label"><strong>���߻���Ȳ</strong></span></a></li>
                    <li><a href="board_list.jsp" class="logo"><span class="label">��������</span></a></li>


                </ul>
            </header>



            <!-- Section -->
            <section>

                <div class="posts">
                <%for(fieldVO vo1_field : array_field_all){%>
                    <article>
                        <div class="image">
								  <img src="images/pic01.jpg" > 
									<div class="text">
									
										<p><%=vo1_field.getField_memo() %></p>
									</div>
							</div>
                        <h3><%=vo1_field.getField_seq() %>. <%=vo1_field.getField_name() %></h3>
                        <p><%=vo1_field.getField_addr() %></p>
                        <div class="col-6 col-12-small">
                        <ul class="actions stacked">
                            <li><a href="sensorValueCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button primary"
									style="margin-right: 10px;">SAFEBOX Ȯ��</a>
									<a href="fieldUpdateCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button"
									style="margin-right: 10px;">���� ���� ����</a>
									<a href="safeboxListCheckService?field_seq=<%=vo1_field.getField_seq()%>" class="button">��ġ SAFEBOX ���</a>
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
                   	 <li><a href="login.jsp">�α���</a></li>
                   	 <%}else{ %>
                     <li><a href="mypage.jsp">ȸ����������</a></li>
                     <li><a href="logoutServlet" class="logo">�α׾ƿ�</a></li>
					 <%} %>
                    
                </ul>
            </nav>

            <!-- Menu -->
            <% if(vo!=null){%>
            <nav id="menu">
                <header class="major">
                    <h2>���� ���� �޴�</h2>
                </header>
                <ul>
                    <li><a href="fieldlist.jsp">���� ��� </a></li>
                    <li><a href="board_list.jsp">���� ����</a></li>
                    <li><a href="notice.jsp">��� �߻� ��Ȳ</a></li>
                </ul>
            </nav>
            <%}else{%>
            <nav id="menu">
					<header class="major">
						<h2>���� ���� �޴�</h2>
					</header>
					<ul>
						<li><a href="#">�α����� �ʿ��մϴ�. </a></li>
						
					</ul>
				</nav>
				<%} %>
            
           
                    
            <section>
                <header class="major">
                    <h2>�� ����</h2>
                </header>
                	<ul class="contact">
										<% if(vo!=null){%>
										<li class="icon solid fa-envelope"><%=vo.getAdmin_email() %></li>
										<li class="icon solid fa-phone"><%=vo.getAdmin_phone() %></li>
										<li class="icon solid fa-home"><%=vo.getAdmin_dept() %></li>
										<%}else{ %>
										<li class="icon solid fa-envelope">�̸���</li>
										<li class="icon solid fa-phone">��ȭ��ȣ</li>
										<li class="icon solid fa-home">�Ҽ�</li>
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
					let check = confirm("�������  ���� ��Ȳ�� Ȯ�����ּ���!!  �������");
					if(check){
						window.location.href = "notice.jsp";
						
					}							
				}
			},
			error : function(){ //��� ����
			}
		});
		
		  $.ajax({
			type : "get", 
			url : "transeService", 
			dataType : "text",
			data : {'data' : '��� ����'},
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