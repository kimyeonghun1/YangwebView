/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.72
 * Generated at: 2021-12-17 00:43:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class fieldAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<!--\r\n");
      out.write("	Editorial by HTML5 UP\r\n");
      out.write("	html5up.net | @ajlkn\r\n");
      out.write("	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<title>Generic - Editorial by HTML5 UP</title>\r\n");
      out.write("		<meta charset=\"utf-8\" />\r\n");
      out.write("		<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"assets/css/main.css\" />\r\n");
      out.write("	</head>\r\n");
      out.write("	<body class=\"is-preload\">\r\n");
      out.write("\r\n");
      out.write("		<!-- Wrapper -->\r\n");
      out.write("			<div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("				<!-- Main -->\r\n");
      out.write("					<div id=\"main\">\r\n");
      out.write("						<div class=\"inner\">\r\n");
      out.write("\r\n");
      out.write("							<!-- Header -->\r\n");
      out.write("								<header id=\"header\">\r\n");
      out.write("									<a href=\"fieldAdd.jsp\" class=\"logo\" style=\"font-size: 20px;\"><strong>현장 추가 </strong></a>\r\n");
      out.write("									\r\n");
      out.write("								</header>\r\n");
      out.write("\r\n");
      out.write("							<!-- Content -->\r\n");
      out.write("								<section>\r\n");
      out.write("									<!-- <header class=\"main\">\r\n");
      out.write("										<h1></h1>\r\n");
      out.write("									</header> -->\r\n");
      out.write("\r\n");
      out.write("									<!-- <span class=\"image main\"><img src=\"images/pic11.jpg\" alt=\"\" /></span> -->\r\n");
      out.write("\r\n");
      out.write("									<form method=\"post\" action=\"fieldAddServlet.java\">\r\n");
      out.write("                                        <div class=\"row gtr-uniform\">\r\n");
      out.write("                                            <div class=\"row gtr-uniform\">\r\n");
      out.write("                                                <div class=\"col-6 col-12-xsmall\"> \r\n");
      out.write("                                               \r\n");
      out.write("                                                    <input type=\"text\" name=\"fieldName\" id=\"demo-name\" value=\"\" placeholder=\"현장명\" />\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 col-12-xsmall\">\r\n");
      out.write("                                                    <input type=\"text\" name=\"fieldAddr\" id=\"demo-email\" value=\"\" placeholder=\"주소\" />\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-12\">\r\n");
      out.write("                                                    <textarea name=\"fieldMemo\" id=\"demo-message\" placeholder=\"메모\" rows=\"6\"></textarea>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <!-- <div class=\"col-6 col-12-xsmall\">\r\n");
      out.write("                                                    <input type=\"text\" name=\"demo-id\" id=\"demo-name\" value=\"\" placeholder=\"아이디\" />\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 col-12-xsmall\">\r\n");
      out.write("                                                    <input type=\"password\" name=\"demo-pw\" id=\"demo-email\" value=\"\" placeholder=\"비밀번호\" />\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                                <div class=\"col-6 col-12-xsmall\">\r\n");
      out.write("                                                    <input type=\"text\" name=\"demo-phone\" id=\"demo-email\" value=\"\" placeholder=\"전화번호\" />\r\n");
      out.write("                                                </div> -->\r\n");
      out.write("                                            <!-- Break -->\r\n");
      out.write("                                            <!-- <div class=\"col-12\">\r\n");
      out.write("                                                <select name=\"demo-category\" id=\"demo-category\">\r\n");
      out.write("                                                    <option value=\"\">- 소속 -</option>\r\n");
      out.write("                                                    <option value=\"1\">Manufacturing</option>\r\n");
      out.write("                                                    <option value=\"1\">Shipping</option>\r\n");
      out.write("                                                    <option value=\"1\">Administration</option>\r\n");
      out.write("                                                    <option value=\"1\">Human Resources</option>\r\n");
      out.write("                                                </select>\r\n");
      out.write("                                            </div> -->\r\n");
      out.write("                                            <!-- Break -->\r\n");
      out.write("                                            <!-- <div class=\"col-4 col-12-small\">\r\n");
      out.write("                                                <input type=\"radio\" id=\"demo-priority-low\" name=\"demo-priority\" checked>\r\n");
      out.write("                                                <label for=\"demo-priority-low\">Low</label>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-4 col-12-small\">\r\n");
      out.write("                                                <input type=\"radio\" id=\"demo-priority-normal\" name=\"demo-priority\">\r\n");
      out.write("                                                <label for=\"demo-priority-normal\">Normal</label>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-4 col-12-small\">\r\n");
      out.write("                                                <input type=\"radio\" id=\"demo-priority-high\" name=\"demo-priority\">\r\n");
      out.write("                                                <label for=\"demo-priority-high\">High</label>\r\n");
      out.write("                                            </div> -->\r\n");
      out.write("                                            <!-- Break -->\r\n");
      out.write("                                            <!-- <div class=\"col-6 col-12-small\">\r\n");
      out.write("                                                <input type=\"checkbox\" id=\"demo-copy\" name=\"demo-copy\">\r\n");
      out.write("                                                <label for=\"demo-copy\">Email me a copy</label>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-6 col-12-small\">\r\n");
      out.write("                                                <input type=\"checkbox\" id=\"demo-human\" name=\"demo-human\" checked>\r\n");
      out.write("                                                <label for=\"demo-human\">I am a human</label>\r\n");
      out.write("                                            </div> -->\r\n");
      out.write("                                            <!-- Break -->\r\n");
      out.write("                                            <!-- <div class=\"col-12\">\r\n");
      out.write("                                                <textarea name=\"demo-message\" id=\"demo-message\" placeholder=\"Enter your message\" rows=\"6\"></textarea>\r\n");
      out.write("                                            </div> -->\r\n");
      out.write("                                            <!-- Break -->\r\n");
      out.write("                                            <div class=\"col-12\" style=\"text-align: center;\">\r\n");
      out.write("                                                <ul class=\"actions\" >\r\n");
      out.write("                                                    <li>\r\n");
      out.write("                                                    <input type=\"submit\" value=\"추가\" class=\"primary\" style=\"margin-right: 10px;\" >\r\n");
      out.write("                                                    <input type=\"reset\" value=\"초기화\" style=\"margin-left: 10px;\">\r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                       </div>\r\n");
      out.write("                                    </form>\r\n");
      out.write("\r\n");
      out.write("									<!-- <hr class=\"major\" />\r\n");
      out.write("\r\n");
      out.write("									<h2></h2>\r\n");
      out.write("									<p></p>\r\n");
      out.write("									<p></p>\r\n");
      out.write("\r\n");
      out.write("									<hr class=\"major\" />\r\n");
      out.write("\r\n");
      out.write("									<h2></h2>\r\n");
      out.write("									<p></p>\r\n");
      out.write("									<p></p>\r\n");
      out.write("\r\n");
      out.write("									<hr class=\"major\" />\r\n");
      out.write("\r\n");
      out.write("									<h2></h2>\r\n");
      out.write("									<p></p>\r\n");
      out.write("									<p></p> -->\r\n");
      out.write("\r\n");
      out.write("								</section>\r\n");
      out.write("\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("				<!-- Sidebar -->\r\n");
      out.write("					<div id=\"sidebar\">\r\n");
      out.write("						<div class=\"inner\">\r\n");
      out.write("\r\n");
      out.write("							<!-- Search -->\r\n");
      out.write("								<section id=\"search\" class=\"alt\">\r\n");
      out.write("									<form method=\"post\" action=\"#\">\r\n");
      out.write("										<input type=\"text\" name=\"query\" id=\"query\" placeholder=\"Search\" />\r\n");
      out.write("									</form>\r\n");
      out.write("								</section>\r\n");
      out.write("\r\n");
      out.write("								\r\n");
      out.write("									<nav id=\"menu\">\r\n");
      out.write("									\r\n");
      out.write("										<ul>\r\n");
      out.write("											<li><a href=\"login.jsp\">로그인</a></li>\r\n");
      out.write("										<li><a href=\"mypage.jsp\">회원정보수정</a></li>\r\n");
      out.write("									</ul>\r\n");
      out.write("								</nav>\r\n");
      out.write("\r\n");
      out.write("							<!-- Menu -->\r\n");
      out.write("								<nav id=\"menu\">\r\n");
      out.write("									<header class=\"major\">\r\n");
      out.write("										<h2>현장 관리 메뉴</h2>\r\n");
      out.write("									</header>\r\n");
      out.write("									<ul>\r\n");
      out.write("										<li><a href=\"fieldlist.jsp\">현장 목록 </a></li>\r\n");
      out.write("										<li><a href=\"sensorList.jsp\">센서 목록 </a></li>\r\n");
      out.write("										<li><a href=\"board_list.jsp\">관리 일지</a></li>\r\n");
      out.write("                              			<li><a href=\"notice.jsp\">경고 발생 현황</a></li>\r\n");
      out.write("											<!-- <li><a href=\"elements.html\">SafeBox List Manage</a></li> -->\r\n");
      out.write("											<!-- <li><a href=\"safebox.html\">SafeBox List</a></li> -->\r\n");
      out.write("											<!-- <li>\r\n");
      out.write("												<span class=\"opener\">Submenu</span>\r\n");
      out.write("												<ul>\r\n");
      out.write("													<li><a href=\"#\">Lorem Dolor</a></li>\r\n");
      out.write("													<li><a href=\"#\">Ipsum Adipiscing</a></li>\r\n");
      out.write("													<li><a href=\"#\">Tempus Magna</a></li>\r\n");
      out.write("													<li><a href=\"#\">Feugiat Veroeros</a></li>\r\n");
      out.write("												</ul>\r\n");
      out.write("											</li> -->\r\n");
      out.write("											\r\n");
      out.write("										</ul>\r\n");
      out.write("									</nav>\r\n");
      out.write("	\r\n");
      out.write("								<!-- Section -->\r\n");
      out.write("									<!-- <section>\r\n");
      out.write("										<header class=\"major\">\r\n");
      out.write("											<h2>Ante interdum</h2>\r\n");
      out.write("										</header>\r\n");
      out.write("										<div class=\"mini-posts\">\r\n");
      out.write("											<article>\r\n");
      out.write("												<a href=\"#\" class=\"image\"><img src=\"images/pic07.jpg\" alt=\"\" /></a>\r\n");
      out.write("												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>\r\n");
      out.write("											</article>\r\n");
      out.write("											<article>\r\n");
      out.write("												<a href=\"#\" class=\"image\"><img src=\"images/pic08.jpg\" alt=\"\" /></a>\r\n");
      out.write("												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>\r\n");
      out.write("											</article>\r\n");
      out.write("											<article>\r\n");
      out.write("												<a href=\"#\" class=\"image\"><img src=\"images/pic09.jpg\" alt=\"\" /></a>\r\n");
      out.write("												<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>\r\n");
      out.write("											</article>\r\n");
      out.write("										</div>\r\n");
      out.write("										<ul class=\"actions\">\r\n");
      out.write("											<li><a href=\"#\" class=\"button\">More</a></li>\r\n");
      out.write("										</ul>\r\n");
      out.write("									</section> -->\r\n");
      out.write("	\r\n");
      out.write("								<!-- Section -->\r\n");
      out.write("									<section>\r\n");
      out.write("										<header class=\"major\">\r\n");
      out.write("											<h2>내 정보</h2>\r\n");
      out.write("										</header>\r\n");
      out.write("									\r\n");
      out.write("									<ul class=\"contact\">\r\n");
      out.write("										<li class=\"icon solid fa-envelope\"><a href=\"#\">information@untitled.tld</a></li>\r\n");
      out.write("										<li class=\"icon solid fa-phone\">(000) 000-0000</li>\r\n");
      out.write("										<li class=\"icon solid fa-home\">1234 Somewhere Road #8254<br />\r\n");
      out.write("										Nashville, TN 00000-0000</li>\r\n");
      out.write("									</ul>\r\n");
      out.write("								</section>\r\n");
      out.write("\r\n");
      out.write("							<!-- Footer -->\r\n");
      out.write("								<footer id=\"footer\">\r\n");
      out.write("									<p class=\"copyright\">&copy; Untitled. All rights reserved. Demo Images: <a href=\"https://unsplash.com\">Unsplash</a>. Design: <a href=\"https://html5up.net\">HTML5 UP</a>.</p>\r\n");
      out.write("								</footer>\r\n");
      out.write("\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("		<!-- Scripts -->\r\n");
      out.write("			<script src=\"assets/js/jquery.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/browser.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/breakpoints.min.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/util.js\"></script>\r\n");
      out.write("			<script src=\"assets/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
