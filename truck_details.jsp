
<html>
    <head>
         
              <style>
            tr.spaceUnder>td {
  padding-bottom: 1em;
}
        </style>
      <script type="text/javascript" src="js/modernizr.custom.86080.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
 <link rel="stylesheet" href="bootstrap.min.css">
  <script src="jquery.min.js"></script>
 <script src="bootstrap.min.js"></script>
           
    </head>
    <body style="background-color: whitesmoke;">
        <script src="jquery.min.js"></script>
        <form name="frm" method="post">
        <h1 style="color:cyan;" align="center"> <b><u>Truck Details</u></b></h1>
                <div align="right">
            BSP/CMMS&CBMS
        </div>
        <div style="border:2px solid ;border-radius:30px; background-color: blanchedalmond">
            <br><br><table align="center">
            <tr class="spaceUnder">
                <td>DATE</td>
                <td><input type="date" name="t31" class="c1"></td>
               
            </tr>
            
            <tr class="spaceUnder">
                <td>
                    TRUCK NUMBER
                </td>
                <td><input type="text" name="t1"  class="c1" data-toggle="tooltip" style="border-style: inset;" title="(ENTER TRUCKNO_CAP IF DUAL CAP EXIST)"> </td>
                
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>FORM NUMBER</td>
                <td><input type="text" style="border-style: inset;" name="t2" class="c1"></td>
                <td></td>
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>CAPACITY</td>
                <td><input type="text" style="border-style: inset;" name="t3" class="c1"></td>
                <td></td>
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>NO. OF COMPARTMENTS</td>
                <td><input type="text" style="border-style: inset;" name="t4" id="t4" onblur="comp()" class="c1"></td>
                
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>TARE WEIGHT</td>
                <td><input type="text" style="border-style: inset;" name="t5" class="c1"></td>
                <td></td>
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>FORM 9 VALIDITY</td>
                <td><input type="date" style="border-style: inset;" name="t6" class="c1"></td>
                <td></td>
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td></td>
                <td>FROM</td>
                <td>TO</td>
            </tr>
            <tr></tr>
            <tr class="spaceUnder">
                <td>VALIDITY</td>
                <td><input type="date" style="border-style: inset;" name="t7" id="t7" class="c1"></td>
                 <td><input type="date" style="border-style: inset;" name="t8" onblur="validate()" id="t8" class="c1"></td>
                 
            </tr>
            <tr></tr>
           
            <tr class="spaceUnder">
                <td colspan="3">
                  
         <fieldset style="border-color: black;" >             
            <legend>COMPARTMENT DETAILS:</legend>
               <table>   
              
            <tr class="spaceUnder">
                <td><p class="p"></p></td>
            </tr>
               </table>
         </fieldset>
                    <table>
               <tr class="spaceUnder">
            <td>TRIM-CARD ISSUE DATE</td>
            <td><input type="date"  name="t29" class="c1"></td>
               </tr>
               <tr class="spaceUnder">
                   <td>HELLO</td>
            <td><input type="text" style="border-style: inset;" name="t30" class="c1"></td>
               </tr>
        </table><br><br>
        
        <div align="center">
         
         &emsp; <input type="button" value="CLEAR" name="b3" onclick="cleartext()">&nbsp;
          &emsp; <input type="submit" value="SAVE" name="b4" >&nbsp;
          &emsp; <input type="button" value="EXIT" name="b5" onclick="exit()"><br><br>
         
        
    </div>
            </table>
        </div>
        </form>
        <script>
             
             function truck()
             {
                 var m=t.split(" ");
                if(m.length!==3)
                {
                        alert("invalid1");
                }
else
{
  var n=m[0];
  if(n.length!==5)
  {
    alert("invalid4");
  }
  else{
	if(!(n.charAt(0)>=65 ||n.charAt(0)<=90))
	{
	alert("invalid2");

	} 	
	if(x.charAt(2)!=='-')
        {
            alert("invalid3");
	}
    }

n=m[1];
	
}
             }
            function exit()
            {
                var r=confirm("DO YOU WANT TO EXIT");
                if(r===true)
                    window.location="home.jsp";
                else
                    window.loaction="truck_details.jsp";
            }
            function cleartext()
            {
                var elements = [] ;
                elements = document.getElementsByClassName("c1");

                for(var i=0; i<elements.length ; i++){
                     elements[i].value = "" ;
                    }
                    
            }
            
            function insert()
            {
                window.location="truck_insert.jsp";
            
             }
             
             
             
                 function comp()
                 {
                     
                    var n=document.getElementById("t4").value;
                    var x="<table><tr><td>NO.</td><td>VOLUME</td><td>P/L</td><td>D/L</td>";
                    for(i=1;i<=n;i++)
                    {
                        x=x+"<tr><td><input type=text class=save name=x></td><td><input type=text class=save name=y></td><td><input type=text class=save name=z></td><td><input type=text class=save name=w></td></tr>";
                      
                    }
                      x=x+"</table>";
                        $(".p").html(x);
                  }
              function validate()
                 {
                     
                     var x=document.getElementById("t7").value;
                     var y=document.getElementById("t8").value;
                     
                     var z=x.split("-");
                       var d1=z[1]+"/"+z[2]+"/"+z[0];
                       z=y.split("-");
                       var d2=z[1]+"/"+z[2]+"/"+z[0];
                        
        
               var date1 = new Date(d1);
var date2 = new Date(d2);
var timeDiff = date2 - date1;
var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
if(diffDays<0)
alert("invalid date");
   
else 
    alert("valid date");
                 }
             
             
            
            
    </script>
                
    </body>
</html>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%
   if(request.getParameter("b4")!=null)   
{
       
            String t1=request.getParameter("t1");
           
            String t9=request.getParameter("t9");
            String t10=request.getParameter("t10");
            String t11=request.getParameter("t11");
            String t12=request.getParameter("t12");
            String t13=request.getParameter("t13");
            String t14=request.getParameter("t14");
          
            
            String s2=request.getParameter("t2");
             int t2=Integer.parseInt(s2);
            String s3=request.getParameter("t3");
             int t3=Integer.parseInt(s3);
            String s4=request.getParameter("t4");
            int t4=Integer.parseInt(s4);
            String t5=request.getParameter("t5");
            String t6=request.getParameter("t6");
            String t7=request.getParameter("t7");
            String t8=request.getParameter("t8");
             
            
            String t15=request.getParameter("t15");
            String t16=request.getParameter("t16");
            String t17=request.getParameter("t17");
            String t18=request.getParameter("t18");
            String t19=request.getParameter("t19");
            String t20=request.getParameter("t20");
            String t21=request.getParameter("t21");
            String t22=request.getParameter("t22");
            String t23=request.getParameter("t23");
            String t24=request.getParameter("t24");
            String t25=request.getParameter("t25");
            String t26=request.getParameter("t26");
            String t27=request.getParameter("t27");
            String t28=request.getParameter("t28");
            String t29=request.getParameter("t29");
            String t30=request.getParameter("t30");
            String t31=request.getParameter("t31");
           
           try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
           
      Statement stmt=conn.createStatement();
      
       String sql1="insert into CCDTRUCKMAST_TAB(TRUCK_NO,TRUCK_CAP,VALID_FROM,VALID_TO,FORM_NO,NO_OF_COMP,CREATE_DATE,TARE_WT,FRM9_VALIDITY,TRIM_DATE) values('"+t1+"','"+t3+"',TO_DATE('"+t7+"','yyyy/mm/dd'),TO_DATE('"+t8+"','yyyy/mm/dd'),'"+t2+"','"+t4+"',TO_DATE('"+t31+"','yyyy/mm/dd'),'"+t5+"',TO_DATE('"+t6+"','yyyy/mm/dd'),TO_DATE('"+t29+"','yyyy/mm/dd'))"; 
       
       //out.print(sql1);
       int rs1=stmt.executeUpdate(sql1);
     
      
     if(rs1!=0)
          out.print("inserted1");
      else
          out.print("error");
      
      
    String x[]=request.getParameterValues("x");
    String y[]=request.getParameterValues("y");
    String z[]=request.getParameterValues("z");
    String w[]=request.getParameterValues("w");
    String sql;
    int rss=0,e,f,g,h;
   // out.print("length="+x.length);
    for(int i=0;i<x.length;i++){
            String a=x[i];
            e=Integer.parseInt(a);
            String b=y[i];
            f=Integer.parseInt(b);
            String c=z[i];
            g=Integer.parseInt(c);
            String d=w[i];
            h=Integer.parseInt(d);
          sql="insert into CCDCOMPMAST_TAB(TRUCK_NO,COMP_NO,COMP_VOL,COMP_PL,COMP_DL) values('"+t1+"','"+e+"','"+f+"','"+g+"','"+h+"')"; 
           // out.print(sql);
       rss=stmt.executeUpdate(sql);
    }
        //out.print(1);
          conn.close();
            if(rss!=0)
          out.print("inserted");
      else
          out.print("error");
    
     
     
        }

        catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }
            catch(NullPointerException e)
          {
            out.println("<script>alert('SOME FIELD IS EMPTY.PLEASE ENTER ALL DETAILS')</script>");
          }
            catch(NumberFormatException n)
          {
            out.println("<script>alert('SOME FIELD IS EMPTY.PLEASE ENTER ALL DETAILS')</script>");
          }
}
    %>