<%@ page import="com.google.gson.Gson"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="oracle.jdbc.driver.*"%>
<%@ page import="oracle.sql.*"%>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Locale"%>
<%
     String s8=request.getParameter("t");
    
      //String s8="CG 07 MH 1878";
     //String s8="CG7u85";
   
    //out.print(s8);
       try
        {
            
     Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");           
      Statement stmt=conn.createStatement();          
	   String que="select * from CCDTRUCKMAST_TAB where TRUCK_NO='"+s8+"'";
           // out.print(que);
            ResultSet rs1=stmt.executeQuery(que);
            if(rs1.next())
                    {
                           out.print("1");
                    }
            else{
                  out.print("0");
                    }
        }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }




%>
    