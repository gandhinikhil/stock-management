package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"ISO-8859-1\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/universal_style.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/index.css\">\r\n");
      out.write("\t<title>Home</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"bg\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div class=\"container h-100\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<div class=\"row h-100 justify-content-center align-items-center\">\r\n");
      out.write("\t\t\t\t<div class=\"jumbotron col-12\" style=\"text-align: center; background-color: rgba(233, 236, 239, 0.1); box-shadow: 5px 10px 18px #3d3d5c;\">\r\n");
      out.write("\t  \t\t\t\t<h1 class=\"display-4\" style=\"color: #ffffff;\">STOCK MANAGEMENT SYSTEM</h1>\r\n");
      out.write("\t  \t\t\t\t<p class=\"lead\">A pharmaceutical company distributes their pharmaceutical and healthcare products, supplies and prescription drugs to a lot of distribution centers.</p>\r\n");
      out.write("\t  \t\t\t\t<hr class=\"my-4\">\r\n");
      out.write("\t  \t\t\t\t<a class=\"btn btn-primary btn-lg\" href=\"registration.jsp\" role=\"button\">Register</a>\r\n");
      out.write("\t  \t\t\t\t<a class=\"btn btn-primary btn-lg\" href=\"login.jsp\" role=\"button\">Login</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
