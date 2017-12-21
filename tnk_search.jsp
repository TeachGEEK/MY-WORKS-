<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%
    //String s1="NGB";
    String s1=request.getParameter("m");
            
            out.print("<datalist id='abc'>");
       try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
           ArrayList<String> l=new ArrayList<String>();
      Statement stmt=conn.createStatement();
           
	    String q="select * from CCDTANKMAST_TAB where PRODUCT='"+s1+"' ";
            out.print(q);
            ResultSet rs=stmt.executeQuery(q);
            while(rs.next())
                    {
                      l.add(rs.getString("TANK_NO"));
                       out.print("<option>"+rs.getString("TANK_NO")+"</option>");
                    }
            out.print("</datalist>");
           
            /*
            String json=new Gson().toJson(l);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
          */
  
	    }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }




%>