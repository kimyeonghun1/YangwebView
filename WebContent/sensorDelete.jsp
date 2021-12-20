<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>

<html>
<head>
    <title>Generic - Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <header id="header">
                        <a href="safeboxadd.html" class="logo" style="font-size: 20px;"><strong>���� ���� ����</strong> </a>
                        <ul class="icons">

                        </ul>
                    </header>

                    <!-- Content -->
                    <section>


                        <form method="post" action="sensorUpdateService">
                            <div class="row gtr-uniform">
                                <div class="row gtr-uniform">
                                    <div class="col-6 col-12-xsmall">
                                        <input type="text" name="sensor_name_update" id="demo-email" value="" placeholder="���� �̸�" />
                                    </div>
                                    <div class="col-6 col-12-xsmall">
                                        <input type="text" name="sensor_id_update" id="demo-email" value="" placeholder="����  ID" />
                                    </div>


                                    <div class="col-12" style="text-align: center;">
                                        <ul class="actions" >
                                            <li><input type="submit" value="����" class="primary" style="margin-right: 10px;" ><input type="reset" value="�ʱ�ȭ" style="margin-left: 10px;"></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </form>


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
                    <nav id="menu">
                        <header class="major">
                            <h2>���� ���� �޴�</h2>
                        </header>
                        <ul>
                            <li><a href="fieldlist.jsp">���� ��� </a></li>
                            <li><a href="sensorList.jsp">���� ��� </a></li>
                            <li><a href="board_list.jsp">���� ����</a></li>
                            <li><a href="notice.jsp">��� �߻� ��Ȳ</a></li>

                        </ul>
                    </nav>


                    <!-- Section -->
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

</body>
</html>