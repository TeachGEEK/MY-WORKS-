<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>

        <style type="text/css">
        .ui-datepicker { font-size:8pt !important}
                   
            tr.spaceUnder>td {
  padding-bottom: 1em;
}
       
        </style>
        
<% 
  //String s1="MH43Y6544";
    
     String s1=request.getParameter("n");
    
       try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
      
      Statement stmt=conn.createStatement();
           String s2=" ";
	    String q="select * from CCDTAREWT_TAB where TRUCK_NO='"+s1+"'";
            
            ResultSet rs=stmt.executeQuery(q);
            out.print("<table>");
            while(rs.next())
                    {
                        s2=rs.getString("TANKNO1");
                        
                       out.print("<tr><td style='color:brown;'>TANK NO:</td> <td><input type='text' disabled class='c1' id='tnk' name='t3' style='border-style: inset;' value='"+s2+"' readonly></td></tr><tr></tr>");
                    }
           
             
               String s3;
	    String q1="select * from CCDTANKMAST_TAB where TANK_NO='"+s2+"'";
            
            ResultSet rs1=stmt.executeQuery(q1);
            
            while(rs1.next())
                    {
                        s3=rs1.getString("PRODUCT");
                        
                       out.print("<tr class='spaceUnder'><td class='ta1'>PRODUCT:</td><td><input type='text' name='t4' class='c1' disabled readonly id='pro' style='border-style: inset;' value='"+s3+"'></td></tr>");
                    }
             
	    }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }

 out.print("<tr><td class='ta1'>INITIAL DIP :</td> <td><input type='text' id='sp' onclick='spgr()' style='border-style: inset;' class='c1' name='t5' ></td></tr>");
  out.print("</table>");
%>

