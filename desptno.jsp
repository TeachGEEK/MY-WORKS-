<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>


<%
    //String s1="07/22/2017";
   String s1=request.getParameter("m");
 
   out.print("<script>alert(s1);</script>");
      //  out.print(s1);    
            out.print("<select id='truck' name='truck' class='c1'>");
           
       try
           
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
           ArrayList<String> l=new ArrayList<String>();
      Statement stmt=conn.createStatement();
           //out.print(2);
           String s2;
	    String q="select * from CCDTAREWT_TAB where DESP_DATE=TO_DATE('"+s1+"','yyyy/mm/dd')";
            //out.print(q);
            ResultSet rs=stmt.executeQuery(q);
            while(rs.next())
                    {
                      l.add(rs.getString("TRUCK_NO"));
                      s2=rs.getString("TRUCK_NO");
                      
                       out.print("<option value='"+rs.getString("TRUCK_NO")+"' class='c1'>"+rs.getString("TRUCK_NO")+"</option>");
                    }
            
            out.print("</select>");
            
           
            
            /* String json=new Gson().toJson(l);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);*/
        
	    }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }



%>