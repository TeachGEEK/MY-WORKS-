<html>
    <head>
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/base/minified/jquery-ui.min.css" type="text/css" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>
        <style type="text/css">
        .ui-datepicker { font-size:8pt !important}
                   
            tr.spaceUnder>td {
  padding-bottom: 1em;
}
       
        </style>
        <title>DESPATCH</title>
    </head>
     <body style="background-color:white;">
         <form name="frm"  method="post">
             <script type="text/javascript">
        $(function() 
        {
           //$("#Date1").datepicker();
           
           
            $('#Date1').blur(function()
           {
                var x=$(this).val();
                //alert(x);
                $.post('desptno.jsp',{m:x},function(data)
                {  
                    $('#list').html(data);
                });
        });
       /* function rewet()
        {
                 document.getElementById("rewt").value="<table <tr><td>REWEIGHT</td><td><input type='text' name='r1'></td></tr></table>";
        }*/
        var m=1;
        $('body').on('blur','#1',function(){
        
            var x=$(this).val();
            $('.sealno').val(x);
        });    
        
        $('body').on('blur','.dip',function(){
            
           var y=$(this).closest('tr').find('.dip').val();
           var z=$(this).closest('tr').find('.vol').val();
            var d=$(this).closest('tr').find('.dl').val();
           
           $(this).closest('tr').find('.calvolume').val((y*z)/d);
        });
           
       
        
          $('#c1').click(function()
           {
    
                $.post('rewet.jsp',{},function(data)
                {  
                    $('#rewt').html(data);
                });
        });
        
           $('body').on('blur','#truck',function()
           {
                var x=$(this).val();
                //alert(x);
                $.post('checktno.jsp',{m:x},function(data)
                {
         
                     $('#m').html(data);
                });
                $.post('checktnk.jsp',{n:x},function(data)
                {
         
                     $('#o').html(data);
                });
        });
        
           $('body').on('blur','#t34',function()
           {
                var x=$(this).val();
                //alert(x);
               var y=$('#r').val();
               var cal=x-y;
               var call=((y-x)/y)*100;
               if(call>2)
                   alert("THIS IS TO BE SENT FOR RE-WEIGHMENT");
               if(cal>0)
                   alert("CLICK SAVE TO SAVE DATA");
        });
  });
      function spgr()
         { 
              var x=document.getElementById("pro").value;
              if(x==='NGB')
                document.getElementById("r").value="0.869";
            else if(x==='NGT')
                document.getElementById("r").value="0.857";
              else if(x==='XYLENE')
                document.getElementById("r").value="0.855";
             else if(x==='SOLVANTOIL')
                document.getElementById("r").value="0.853";
            else
                document.getElementById("r").value=" ";
              /*NGB :SP_GR:=0.869;
NGPT :SP_GR:=0.857;
XYLENE   :SP_GR:=0.855;
SOLVANT OIL :SP_GR:=0.853;*/
         }
        </script>
        <h1 style="color:maroon;" align="center"> <b><u>DESPATCH FORM</u></b></h1>
        <div align="right">
            BSP/CMMS&CBMS
        </div>
        <div style="border:2px solid ;background-color:whitesmoke; border-radius: 30px;">
            <style> .ta1 { color:brown;}</style><br><br>
            <table align="center">
                <tr class="spaceUnder">
                    <td class="ta1">DATE:</td><td colspan="2"><input type="date" style="border-style: inset;" id="Date1"class="d1" name="t1" ></td>
                </tr>
                <tr class="spaceUnder">
                    <td class="ta1">TRUCK NUMBER:</td> <td colspan="2"> <p id="list" name="t2"><input type="text" style="border-style: inset;" id="tno" class="c1" name="tno">
               </p></td>
                </tr>
                <tr class="spaceUnder">
                    <!--<td class="ta1">PRODUCT:</td>--> <td><p id="p"></p></td>
                     
                </tr>
                <tr class="spaceUnder">
                    <!--<td class="ta1">TANK NO 1:</td>--> <td><p id="o" style="color:brown;"></p></td><td></td><td></td>
                   
                    
                </tr>
            </table>
            <br><br>
            
            <fieldset style="border-color:black;background-color: blanchedalmond;border-radius: 20px;">
                <legend>TRUCK DIP ENTERIES</legend><br><br><br>
                <table align="center">
                <tr> <td><table>
                            
                            <tr><td><p id="m"></p></td><tr>
                        </table>
                    </td>
                </table><br><br>
            </fieldset>
          
        
        <table align="center">
            <tr class="ta1" class="spaceUnder">
                <th>SP. GR.</th><th></th>
                <th>WB WT</th><th></th>
                <th>CAL WT</th>
            </tr><br>
            <tr class="spaceUnder"><td><input type="text" id="r" class="r" style="border-style: inset;" name="t33"></td><td></td>
                <td><input type="text" style="border-style: inset;" id="t34" name="t34"></td><td></td>
                <td><input type="text" style="border-style: inset;" name="t35"  id="t35" class="calwt"></td>
            </tr><br>
            <tr class="spaceUnder"><td class="ta1">SENT FOR RE-WEIGHTMENT  </td><td></td>
                <td><input type="checkbox" class="c1" name="check" id="c1" onclick="rewet()" style="border-style: inset;"></td><td  colspan="2" ><p id="rewt" style="color:brown;"></p></td></tr><tr></tr>
            <tr><td class="ta1">HELLO</td><td></td><td><input type="text" style="border-style:inset"></td></tr><tr></tr> 
            <tr class="spaceUnder">
                <td><input type="button" value="CLEAR" name="b6" onclick="cleartext()"></td><td></td>
                <td><input type="submit" value="SAVE" name="b7"></td><td></td>
                <td> <input type="button" value="EXIT" name="b8" onclick="exit()"></td>
            </tr>
        </table><br><br>
        </div>
        <script>
            function exit()
            {
                var r=confirm("DO YOU WANT TO EXIT");
                if(r===true)
                    window.location="home.jsp";
                else
                    window.loaction="despatch.jsp";
            }
            function cleartext()
            {
                var elements = [] ;
                elements = document.getElementsByClassName("c1");
                   var d=document.getElementsByClassName("d1");
                   d.value="";
                for(var i=0; i<elements.length ; i++){
                     elements[i].value = "" ;
                    }
                    
            }
            
            $(document).ready(function()
            {
            $('#b4').click(function()
            {
                window.location="insert.jsp";
            });
              $('body').on('blur','.sealno',function(){
                  var b,c;
                  b=$("#r").val();
                  var sum=0;
            $('.calvolume').each(function(){
               
               var x= $(this).val();
               
               if(x.length!==0)
               {
                    sum=sum+parseFloat(x);
                }
            });//end of each
          c=(sum*b/1000);
          $('#t35').val(c);
        });
             });
    </script>
            

       <br><br>
     </form>
     </body>
</html>
 
    
      <%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%  
   // out.print("<script>alert('1');</script>");
    if(request.getParameter("b7")!=null)   
{
    // out.print("<script>alert('2');</script>");
      String dt=request.getParameter("t1");      
     //String t2=request.getParameter("t2");
           try
        {

      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");       
      Statement stmt=conn.createStatement();
       //out.print("<script>alert('3');</script>");
            //String t1=request.getParameter("t1");
            String t2=request.getParameter("truck");
             
            String s3=request.getParameter("t34");
             int t3=Integer.parseInt(s3);
            String s4=request.getParameter("t33");
            float t4=Float.parseFloat(s4);
            String s5=request.getParameter("t5");
             int t5=Integer.parseInt(s5);
           //String s6=request.getParameter("r1");
            
               // int r1=Integer.parseInt(s6);
    String x=request.getParameter("t3");
    String y[]=request.getParameterValues("t6");
    String calvol[]=request.getParameterValues("t11");
    String z[]=request.getParameterValues("t10");
   // String w[]=request.getParameterValues("t35");
    String adip[]=request.getParameterValues("t9");
   
   // String avol[]=request.getParameterValues("t11");

     String sql,sql2;
    int rss=0,rs2=0,t6,t9;
    float t11;
   out.print("length="+y.length);
   
       for(int i=0;i<y.length;i++){
            String a=calvol[i];
    t11=Float.parseFloat(a);
            String b=y[i];
    t6=Integer.parseInt(b);
            String t10=z[i];
    
            String d=adip[i];
    t9=Integer.parseInt(d);
           // String d=adip[i];
    //t11=Integer.parseInt(d)
             //String g=x[i];
       String sql1="insert into CCDDESP_TAB(DESP_DATE,TRUCK_NO,TANKNO1,WB_WT,SP_GR,CAL_VOL) values(TO_DATE('"+dt+"','yyyy/mm/dd'),'"+t2+"','"+x+"','"+t3+"','"+t4+"','"+t11+"')"; 
       
      // out.print(sql1);
       int rs1=stmt.executeUpdate(sql1);
     
      
     if(rs1!=0)
          out.print("inserted1");
      else
          out.print("error1");
     
   
          sql="insert into CCDINT_TAB(DESP_DATE,TANKNO,A_DIP,A_VOL,INI_DIP) values(TO_DATE('"+dt+"','yyyy/mm/dd'),'"+x+"','"+t9+"','"+t11+"','"+t5+"')"; 
           // out.print(sql);
             //out.print("<script>alert('4');</script>");
       rss=stmt.executeUpdate(sql);
    
          
            if(rss!=0)
          out.print("INSERTED");
      else
          out.print("error");
    
     sql2="insert into CCDCOMPDES_TAB(DESP_DATE,TRUCK_NO,COMP_NO,DIP,SEAL) values(TO_DATE('"+dt+"','yyyy/mm/dd'),'"+t2+"','"+t6+"','"+t10+"')"; 
     //out.print(sql2);
       rs2=stmt.executeUpdate(sql);
    }
          conn.close();
            if(rs2!=0)
          out.print("INSERTED2");
      else
          out.print("error2");
        }

        catch(SQLException ex)
          {
            System.out.println("error"+ex);
          }
           catch(NullPointerException ex)
          {
            out.println("<script>alert('SOME FIELD IS EMPTY.PLEASE ENTER ALL DETAILS')</script>");
          }
}
    %>
