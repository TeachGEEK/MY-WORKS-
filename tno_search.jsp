<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%
       try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
           ArrayList<String> l=new ArrayList<String>();
      Statement stmt=conn.createStatement();
           
	    String q="select * from CCDTRUCKMAST_TAB";
            ResultSet rs=stmt.executeQuery(q);
            while(rs.next())
                    {
                      l.add(rs.getString("TRUCK_NO"));
                       
                    }
           
            String json=new Gson().toJson(l);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
          
  
	    }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }




%>