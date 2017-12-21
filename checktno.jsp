<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>


<% 
     String s1=request.getParameter("m");
       try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
            Statement stmt=conn.createStatement();
            String s2,s3,s4;
            int m=1;
	    String q="select * from CCDCOMPMAST_TAB where TRUCK_NO='"+s1+"'";
            
            ResultSet rs=stmt.executeQuery(q);
            out.print(""
                    + "<table class='tbl'>"
                    + "<tr style='color:brown;font-size:23px;'><td colspan=3 align='center'><b><u>COMPARTMENT</u></b></td<td></td>"
                    + "<td colspan=3 align='center'><b><u>ACTUAL</u></b></td></tr>"
                    +"<tr></tr>"
                    + " <tr style='background-color:powderblue;'><th>NO.</th><th>VOLUME</th><th>D/L</th><th></th><th>DIP</th><th>SEAL NO</th><th>CAL. VOLUME</th></tr></tr>");
            while(rs.next())
                    {
                        s2=rs.getString("COMP_NO");
                        s3=rs.getString("COMP_VOL");
                        s4=rs.getString("COMP_DL"); 
                       out.print("<tr> <td><input type='text' style='border-style: inset;' disabled value='"+s2+"' name='t6' id='t6' readonly class='c1'></td><td><input type='text' name='t7' disabled style='border-style: inset;' id='t7' value='"+s3+"' readonly class='vol'></td><td><input type='text' name='t8' disabled readonly style='border-style: inset;' value='"+s4+"' id='t8' class='dl'></td><td></td><td><input name='t9'  id='t0' class='dip'> </td><td><input name='t10' id='"+m+"' class='sealno'> </td><td><input name='t11' id='t11'   class='calvolume'> </td></tr>");
                   m++; }
                  out.print("</table>");
             
           
	    }

          catch(SQLException ex)
          {
            System.out.println("error"+ex);          }



%>
