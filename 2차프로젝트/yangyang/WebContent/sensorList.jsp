<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
   Editorial by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Elements - Editorial HTML5 UP</title>
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
                           <a href="sensorList.jsp" class="logo" style="font-size: 20px;"><strong>���� ����</strong></a>
                           <ul class="icons">
                              <!-- <form action="safeboxadd.html"><input type="submit" value="SAFEBOX �߰�" class="primary" /></form> -->
                              <li><a href="sensorAddCheckService?device_seq=<%=safebox_seq_int_session%>" class="logo"><span class="label"><strong>�����߰�</strong></span></a></li>
                              
                           </ul>
                        </header>

                           <!-- Elements -->
                              <h2 id="elements"><%--��� ��ȣ, ���̵�  <%= %> --%></h2>
                                 
                                       <div class="table-wrapper">
                                          <table>
                                             <thead>
                                                <tr>
                                                   <th>��ȣ</th>
                                                   <th>�̸�</th>
                                                   <th>ID</th>
                                                   <th>�����</th>
                                                   <th>����</th>
                                                   <th>����</th>
                                                </tr>
                                             </thead>
                                             <tbody>
                                          
                                                <tr>
                                                   <td>seq</td>
                                                   <td>name</td>
                                                   <td>id</td>
                                                   <td>date</td>
                                                   <td><a href="sensorUpdateCheckService?sensor_seq=<%=vo2_sensor.getSensor_seq()%>" class="logo" style="outline: none; text-decoration: none;">����</a></td>
                                                   <td><a href="sensorDeleteService?sensor_seq=<%=vo2_sensor.getSensor_seq()%>" class="logo" style="outline: none; text-decoration: none;">����</a></td>
                                                </tr>
                                              
                                             </tbody>
                                             
                                          </table>
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
                          
                              <li><a href="login.jsp">�α���</a></li>
                             
                              
                              <li><a href="mypage.jsp">ȸ����������</a></li>                              
                              <li><a href="logoutServlet" class="logo">�α׾ƿ�</a></li>
                             
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