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
    <title>Edito UP</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <script type="text/javascript"
            src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
</head>
<style>
	   .section{
			position: relative;
	   }
	   .article {
		   position: relative;
	   }
	   .posts{
			position: relative;
	   }
      table .ttbody{
         position: relative;
         vertical-align: middle;
      }
      .switch-button { position: relative; display: inline-block; width: 30px; height: 15px; }
      .switch-button input { opacity: 0; width: 0; height: 0; } 
      .switch-button input:checked + .onoff-switch { background-color: #F2D522; box-shadow: inset 1px 5px 1px #E3AE56; } 
      .switch-button input:checked + .onoff-switch:before { -webkit-transform: translateX(26px); -ms-transform: translateX(26px); transform: translateX(26px); }
      .onoff-switch { position: absolute; cursor: pointer; top: 0; left: 0; right: 0; bottom: 0; border-radius:20px; background-color: #ccc; box-shadow: inset 1px 5px 1px #999; -webkit-transition: .4s; transition: .4s; } 
      .onoff-switch:before { position: absolute; content: ""; height: 15px; width: 15px; left: -2px; bottom: 1px; background-color: #fff; -webkit-transition: .5s; transition: .4s; border-radius:20px; }
      .onoff-switch {
			display: inline-block;
			} 

</style>

<body class="is-preload">
<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <header id="header">
                <a href="index.html" class="logo" style="font-size: 20px;"><strong>현장명</strong> <br>
                    현장 주소</a>

                <ul class="icons">

                    <li><a href="notice.html" class="logo"><span
                            class="label"><strong>경고발생현황</strong></span></a></li>
                    <li><a href="board_list.html"  class="logo"><span
                            class="label">관리일지</span></a></li>


                </ul>
            </header>

            <!-- Section -->
            <section class="section">
                <!-- <header class="major">
                    <h2>관리 현장 목록</h2>
                </header> -->
                <div class="posts">
                    <article class="article">
                        <a href="#" class="image"></a>
                        <h3>SAFEBOX ID</h3>
                        <p>기기 위치</p>
                        <div class="table-wrapper">
                            <table>
                                <thead>
                                <tr>
                                    <th>센서 ID</th>
                                    <th>ON/OFF</th>
                                    <th>기기상태</th>
                                    <th>설정변경</th>
                                </tr>
                                </thead>
                                <tbody class="ttbody">
                                <tr>
                                    <td>Item1</td>
                                    <td style="vertical-align:bottom;"><label class="switch-button"><input
                                            type="checkbox"/>
                                        <div class="onoff-switch"></div>
                                    </label></td>
                                    <td style="vertical-align:middle;"><img src="images/정상동그라미.png">
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <form action="sensorManage.html"><input type="submit"
                                                                                value="설정"></form>
                                    </td>
                                </tr>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>ON/OFF</th>
                                        <th>상태</th>
                                        <th>기준</th>
                                        <th>현재</th>
                                        <th>주기</th>
                                        <th>변경</th>

                                    </tr>
                                    </thead>
                                    <tbody class="ttbody">
                                    <tr>
                                        <td>Item1</td>
                                        <td style="vertical-align:bottom;"><label
                                                class="switch-button"><input type="checkbox"/>
                                            <div class="onoff-switch"></div>
                                        </label></td>
                                        <td style="vertical-align:middle;"><img
                                                src="images/비정상동그라미.png"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>

                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>

                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>

                                    </tbody>

                                </table>
                        </div>

                    </article>
                    <article class="article">
                        <a href="#" class="image"></a>
                        <h3>SAFEBOX ID</h3>
                        <p>기기 위치</p>
                        <div class="table-wrapper">
                            <table>
                                <thead>
                                <tr>
                                    <th>센서 ID</th>
                                    <th>ON/OFF</th>
                                    <th>기기상태</th>
                                    <th>진동세기</th>
                                    <th>현재세기</th>
                                    <th>측정주기</th>
                                    <th>설정변경</th>
                                </tr>
                                </thead>
                                <tbody class="ttbody">
                                <tr>
                                    <td>Item1</td>
                                    <td style="vertical-align:bottom;"><label class="switch-button"><input
                                            type="checkbox"/>
                                        <div class="onoff-switch"></div>
                                    </label></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <form action="sensorManage.html"><input type="submit"
                                                                                value="설정"></form>
                                    </td>
                                </tr>
                                <table>
                                    <thead>
                                    <tr>
                                        <th>센서 ID</th>
                                        <th>ON/OFF</th>
                                        <th>기기상태</th>
                                        <th>기준농도</th>
                                        <th>현재농도</th>
                                        <th>측정주기</th>
                                        <th>설정변경</th>

                                    </tr>
                                    </thead>
                                    <tbody class="ttbody">
                                    <tr>
                                        <td>Item1</td>
                                        <td style="vertical-align:bottom;"><label
                                                class="switch-button"><input type="checkbox"/>
                                            <div class="onoff-switch"></div>
                                        </label></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>

                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Item1</td>

                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <form action="sensorManage.html"><input type="submit"
                                                                                    value="설정">
                                            </form>
                                        </td>
                                    </tr>

                                    </tbody>

                                </table>
                        </div>
                        <!-- <ul class="actions" style="text-align: center;">
                            <li><a href="safebox.html" class="button">상세 확인</a></li>
                        </ul> -->
                    </article>
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
                    <input type="text" name="query" id="query" placeholder="Search"/>
                </form>
            </section>

            <nav id="menu">

                <ul>
                    <li><a href="login.html">로그인</a></li>
                    <li><a href="mypage.html">회원정보수정</a></li>
                </ul>
            </nav>

            <!-- Menu -->
            <nav id="menu">
                <header class="major">
                    <h2>현장 관리 메뉴</h2>
                </header>
                <ul>
                    <li><a href="fieldlist.html">현장 목록 </a></li>
                    <li><a href="board_list.html">관리 일지</a></li>
                    <li><a href="notice.html">경고 발생 현황</a></li>


                </ul>
            </nav>


            <section>
                <header class="major">
                    <h2>내 정보</h2>
                </header>

                <ul class="contact">
                    <li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
                    <li class="icon solid fa-phone">(000) 000-0000</li>
                    <li class="icon solid fa-home">1234 Somewhere Road #8254<br/>
                        Nashville, TN 00000-0000
                    </li>
                </ul>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a
                        href="https://unsplash.com">Unsplash</a>. Design: <a
                        href="https://html5up.net">HTML5 UP</a>.</p>
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