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
     String x=" ";
     String y=" ";
      
     
      String s8=request.getParameter("t");
    String s1=request.getParameter("d");
     // String s1="2017/07/22";
     //String  t;
   
    //out.print(s1);
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
                       x= rs1.getString("VALID_TO");
                     y=rs1.getString("FRM9_VALIDITY");
            
           String[]xw= x.split(" ");
           String[]yw= y.split(" ");
           String[]yv= s1.split(" ");
          //out.print(xw[0]+" "+yw[0]+" "+yv[0]);
           
          
           Date start = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(xw[0]);
            Date end = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH).parse(s1);
            Date frm= new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(yw[0]);
            //out.println(start);
            //out.println(end);

            if ((start.compareTo(end) > 0)&&(frm.compareTo(end) > 0) ){
                out.println("<script>alert('valid tno');</script>");
                 
            } else if ((frm.compareTo(end) < 0)){
               out.print("<script>alert('FORM9 VALIDITY FOR THIS TRUCK HAS EXPIRED.HENCE SHOULD NOT BE LOADED');</script>");
               if((start.compareTo(end) < 0))
                   out.print("<script>alert('THIS TRUCK VALIDITY IS OVER.HENCE SHOULD NOT BE LOADED');</script>");
            } else if (start.compareTo(end) == 0) {
                out.println("start is equal to end");
            } else {
                out.println("Something weird happened...");
            }
        }
       else
            {
                out.print(" ");            }
           
        }

 catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }




%>