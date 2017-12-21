<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Locale"%>
<%
    String z=" ";
String s2=request.getParameter("tw");
 String s8=request.getParameter("tno");
      float ctw=Float.parseFloat(s2);
      float tw=0,x=0;
       //out.println(ctw);
           try
        {
            
     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");           
      Statement stmt=conn.createStatement();          
	   String que="select * from CCDTRUCKMAST_TAB where TRUCK_NO='"+s8+"'";
           // out.print(que);
            ResultSet rs1=stmt.executeQuery(que);
            if(rs1.next())
                    {                      
                      z=rs1.getString("TARE_WT");
                      tw=Float.parseFloat(z);
                    }
           //out.println(tw);
           x=ctw-tw;
          // out.println(x);
           if(x>=0.2)
           {
               out.print("<script>alert('TARE WEIGHT IS FICTICIOUS!!!!THIS TANKER SHOULD BE SENT FOR RE-WEIGHMENT')</script>");
               out.print("<script>alert('RE ENTER TARE WEIGHT')</script>");
                
           }
           else
               out.print("0");
        }
           catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }
    %>