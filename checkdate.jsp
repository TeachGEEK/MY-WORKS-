<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<% 
  // String s1="07/22/2017";
    
     String s1=request.getParameter("d");
    
       try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
      
      Statement stmt=conn.createStatement();
           String s2,s3,s4,s5,s6,s7,x,y;
	    String q="select * from CCDTAREWT_TAB where DESP_DATE=TO_DATE('"+s1+"','yyyy/mm/dd') ";
            
            ResultSet rs=stmt.executeQuery(q);
            out.print("<table><tr><th> </th><th> </th><th> </th><th> </th><th> </th><th> </th><th> </th><th> </th></tr>");
            while(rs.next())
                    {
                        s2=rs.getString("TRUCK_NO");
                        s3=rs.getString("TARE_WT");
                        s4=rs.getString("RE_TAREWT");
                       s5=rs.getString("TANKNO1");
                       s6=rs.getString("TANKNO2");
                       s7=rs.getString("REMARKS");
                      
                      out.print("<tr> <td><input type='text' style='border-style: inset;' value='"+s2+"'></td><td><input type='text' style='border-style: inset;' value='"+s3+"'></td><td><input type='text' style='border-style: inset;' value='"+s3+"' class='c1'></td><td><select name='pro' id='pro'> <option>NGB</option><option>NGT</option> <option>XYLENE</option><option>SOLVENT OIL</option><option>STILL BOTTOM</option></select></td><td><input type='text' style='border-style: inset;' value='"+s5+"'></td><td><input type='text' style='border-style: inset;' value='"+s6+"'></td> <td><input type='text' style='border-style: inset;' value='"+s7+"'></td></tr>");
                    }
             out.print("</table>");
             
           
	    }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }



%>