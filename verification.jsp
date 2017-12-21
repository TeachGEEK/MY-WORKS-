<html>
    <head>
  <meta charset="utf-8">
  <title>Demo</title>
  <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/base/minified/jquery-ui.min.css" type="text/css" /> 
</head>
<body style="background-color:white;"> 

<form name="frm"  method="post">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery.min.js"></script>
        <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
        <script type="text/javascript">
             
        
        $(function() 
        {
           //  TO_DATE($("#Date1").datepicker(););
    
           $('.chk').blur(function(){
               
             var tno=$(this).val();
             var d=$('#Date1').val(); 
            $.post('checkvalidity.jsp',{t:tno,d:d},function(data){
                
               $('#o').html(data);
           });
           var z=$(this).closest('tr').find('.tw');
       
        var u=$(this);
             $.post('checktruck.jsp',{t:tno},function(data){    
                  
        
        if(data.trim()==="1"){ 
            
            z.prop('disabled', false);
              
               alert("valid");
               }
              else{ 
                  //alert("0");
                  alert("INVALID TRUCK NO");
                  u.val("");
              }
        });
           });
           
            $('.tw').blur(function(){
                 var t=$(this).val();
                 var w= $(this).closest('tr').find('.rtw');
                  var v=$(this);
                  var tno=$('.auto').val();
            $.post('checktarewt.jsp',{tw:t,tno:tno},function(data){
               alert(data);
                if(data.trim()==="0"){
                     w.prop('disabled', false);
                     
                } 
                else
                {
                     $('#n').html(data);
                     v.val("");
                      $(".rtw").prop('disabled', true);
                }
            });
             
            if(t===null&&t===" ")
            {
                alert('PLEASE ENTER TARE WEIGHT!!!');
            }
            $(this).closest('tr').find('.rm').prop('disabled', false);
            $(this).closest('tr').find('.pro').prop('disabled', false);
            });
            
           $("#Date1").blur(function(){
           var d=$(this).val();
            $.post('checkdate.jsp',{d:d},function(data){
                
               $('#m').html(data);
            });
                $(".auto").prop('disabled', false);
           });
           
           $('.pro').blur(function()
           {
                var x=$(this).val();
                alert(x);
                $.post('tnk_search.jsp',{m:x},function(data)
                {
         
                    $('.list').html(data);
                });
                
               $(this).closest('tr').find('.c2').prop('disabled', false);
           });
          $('#b6').click(function(){
            var tno=$('.auto').val();
            $.post('print.jsp',{m:tno},function(data)
                {
                    
                
                });
                });
                
        });
        </script>
        <style type="text/css">
        .ui-datepicker { font-size:8pt !important}
        </style>
        <title></title>
    </head>
    <body style="background-color:white;border-radius: 30px;">
        <p id="n"></p>
         <p id="o"></p>
       <h1 style="color:brown;" align="center"> <b>BHILAI STEEL PLANT</b></h1>
       <h1 style="color:cyan;" align="center"> <b><u>BENZOL RECTIFICATION PLANT</u></b></h1>
       <div style="border:2px solid ;background-color:whitesmoke; border-radius: 30px;"> 
       <div>
           <h1 style="color:brown;" align="center"> <b>DATE:</b><input type="date" data-toggle="tooltip" title="Use current date only" placeholder="DESP_DATE" style="border-style: inset;" id="Date1"  class="d1" name="t1"></h1>
       </div>
           
       <div>
          <fieldset style="border-color:black ; border-radius: 30px; background-color: blanchedalmond">
               <legend> GOING FOR DPS???TAKE ME ALONG!!!</legend>
               <h3 style="color:brown;" align="center"> HELLO :  <input type="text" style="border-style: inset;"class="d1" name="t2"></h3>
               <h4 style="position:absolute;right:400px;top:250px"><u>LOADED FROM</u></h4> 
       <table align="center" id="tbl">
                   <tr>
                       <th>TRUCK NO</th><th>TARE WT</th><th>RE-TARE WT</th><th>PRODUCT</th><th>TANK 1</th><th>TANK 2</th><th>REMARKS</th> 
                   </tr>
                    <tr>
                        <td colspan="7">  <p id="m"></p></td>
                    </tr>
                   <tr>
                       <td><input type="text"style="border-style: inset;" class="auto chk" name="a" id='t3'><!--<input type='button' value='ok' id='b1' onclick='check()'>--></td>
                    
                       <td><input type="text" style="border-style: inset;"class="tw" name="b"></td>
                    <td><input type="text" style="border-style: inset;"class="rtw" name="c"></td>
                    <td heighgth="40px"><select name="g" id="pro" class="pro">
                            <option>NGB</option>
                            <option>NGT</option>
                            <option>XYLENE</option>
                            <option>SOLVENT OIL</option>
                            <option>STILL BOTTOM</option>
                        </select></td>
                        <td><input type="text" style="border-style: inset;" class="c2" name="d" list="abc" id="t7" >
                            <p class="list"></p>
                        </td>
                    <td><input type="text" style="border-style: inset;"class="c2" name="e" list="abc" id="t8">
                    <p class="list"></p></td>
                    <td><input type="text" style="border-style: inset;"class="rm" name="f"></td>
                   </tr><br>
                 <tr>
                    <td><input type="text"style="border-style: inset;"class="auto chk" name="a"></td>
                    
                    <td><input type="text" style="border-style: inset;"class="tw" name="b"></td>
                    <td><input type="text" style="border-style: inset;"class="rtw" name="c"></td>
                    <td><select name="g" class="pro">
                            <option>NGB</option>
                            <option>NGT</option>
                            <option>XYLENE</option>
                            <option>SOLVENT OIL</option>
                            <option>STILL BOTTOM</option>
                        </select></td>
                    <td><input type="text"style="border-style: inset;" class="c2"  list="abc" name="d">
                     <p id="list"></p></td>
                    <td><input type="text" style="border-style: inset;"class="c2" list="abc" name="e">
                    <p id="list"></p></td>
                    <td><input type="text" style="border-style: inset;" class="rm" name="f"></td>
                  </tr><br>
                 
               </table>
               <div  align="right" >
               <input type="button" value="CREATE ROW" onclick="row()"> &nbsp;
               </div>
               <br><br><br></div>
           <br>
               <div align="center">
                   
               &emsp; <input type="button" value="PRINT REPORT" name="b6" id="b6" onclick="print()">
               &emsp; <input type="submit" value="SAVE" name="b4" id="b4">&nbsp;
                &emsp;<input type="button" value="CLEAR" name="b3" onclick="cleartext()">&nbsp;
               &emsp; <input type="button" value="EXIT" name="b5" onclick="exit()"><br><br>
               </div>
               
              </fieldset>
       </div>
       <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>	
<script type="text/javascript">
           $(function() {
                  
        $(".auto").prop('disabled', true);
	$(".c1").prop('disabled', true);
        $(".c2").prop('disabled', true);
        $(".tw").prop('disabled', true);
         $(".rtw").prop('disabled', true);
         $(".rm").prop('disabled', true);
         $(".pro").prop('disabled', true);
	
	$(".auto").autocomplete({
		source: "tno_search.jsp",
		minLength: 1
	});
       
        
        $(".c2").autocomplete({
		source: "tnk_search.jsp",
		minLength: 1
	});

});
           
           function d()
           {
               var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd = '0'+dd;
} 

if(mm<10) {
    mm = '0'+mm;
} 

today =dd + '/' + mm + '/' + yyyy;
return(today);


/*String date1 = "30-10-2003";
String date2 = "30-12-2003";
SimpleDateFormat formatter = new SimpleDateFormat ("dd-MM-yyyy");
Date d1 = formatter.parse(date1);
Date d2 = formatter.parse(date2);
long millisDiff = d2.getTime() - d2.getTime();
double daysDiff = (double)millisDiff/(1000*60*60*24);*/
           }
            function exit()
            {
                var r = confirm ('DO YOU WANT TO EXIT');
                if(r===true)
                    window.location="home.jsp";
                else
                    window.loaction="verification.jsp";
            }
            function cleartext()
            {
                var elements = [] ;
               var t=[];
                elements = document.getElementsByClassName("c1");
                t=document.getElementsByClassName("auto");
                for(var i=0; i<elements.length ; i++){
                     elements[i].value = "" ;
                    }
                     for(var i=0; i<elements.length ; i++){
                     t[i].value = "" ;
                    }
            }
            
            
                 function row()
                 { 
                     
                    // $('#tbl').append("<tr><td><input type='text' style='border-style: inset;' class='auto chk' name='a'></td><td></td><td></td></tr>");
          
    var x="<tr>";//document.getElementById('tbl').insertRow(4);
  /*  var c1=x.insertCell(0);
    var c2=x.insertCell(1);
    var c3=x.insertCell(2);
    var c4=x.insertCell(3);
    var c5=x.insertCell(4);
    var c6=x.insertCell(5);
    var c7=x.insertCell(6);
   */
   x+="<td><input type='text' style='border-style: inset;' class='auto chk' name='a'></td>";            
    x+=" <td><input type='text' style='border-style: inset;' class='tw' name='b' disabled></td>";
    x+="<td><input type='text' style='border-style: inset;' class='rtw' name='c' disabled></td>";
    x+=" <td><select name='g' class='pro' disabled> <option>NGB</option><option>NGT</option><option>XYLENE</option><option>SOLVENT OIL</option><option>STILL BOTTOM</option></select></td>";
      x+="<td><input type='text' disabled style='border-style: inset;' class='c2' list='abc' name='d'> <p class='list'></p></td>";
      x+="<td><input type='text' disabled style='border-style: inset;' class='c2'list='abc' name='e'> <p class='list'></p></td>";
        x+="<td><input type='text'  style='border-style: inset;' class='rm' name='f'></td>";
      x+="</tr>";
       $('#tbl').append(x);
          
                     //var x="<table><tr><td><input type=text class=save name=x></td><td><input type=text class=save name=y></td><td><input type=text class=save name=z></td><td><input type=text class=save name=w></td><td><select name='pro3'><option>NGB</option><option>NGT</option><option>XYLENE</option> <option>SOLVENT OIL</option> <option>STILL BOTTOM</option></select></td> <td><input type=text class=save name=u></td><td><input type=text class=save name=v></td></tr></table>";
                  
                       // $("#p1").HTML(x);
                  //document.getElementByClass('p1').innerHTML=" <tr><td><input type='text' style='border-style: inset;'class='c1' name='t24'></td><td><input type='text' style='border-style: inset;'class='c1' name='t24'></td><td><input type='text' style='border-style: inset;'class='c1' name='t24'></td><td><select name='pro3'><option>NGB</option><option>NGT</option><option>XYLENE</option> <option>SOLVENT OIL</option> <option>STILL BOTTOM</option></select></td> <td><input type='text'style='border-style: inset;'class='c1' name='t24'></td><td><input type='text' style='border-style: inset;'class='c1' name='t24'></td> <td><input type='text' style='border-style: inset;'class='c1' name='t24'></td> </tr> ";
             $(function() {
	
	$(".auto").autocomplete({
		source: "tno_search.jsp",
		minLength: 1
	});
       
        
        $(".c2").autocomplete({
		source: "tnk_search.jsp",
		minLength: 1
	});
          $('.chk').blur(function(){
               
             var tno=$(this).val();
             var d=$('#Date1').val(); 
            $.post('checkvalidity.jsp',{t:tno,d:d},function(data){
                
               $('#o').html(data);
           });
           var z=$(this).closest('tr').find('.tw');
       
        var u=$(this);
             $.post('checktruck.jsp',{t:tno},function(data){    
                  
        
        if(data.trim()=="1"){ 
            
            z.prop('disabled', false);
              
               alert("valid");
               }
              else{ 
                  //alert("0");
                  alert("INVALID TRUCK NO");
                  u.val("");
              }
        });
           });
           
            $('.tw').blur(function(){
                 var t=$(this).val();
                 var w= $(this).closest('tr').find('.rtw');
                  var v=$(this);
                  var tno=$('.auto').val();
            $.post('checktarewt.jsp',{tw:t,tno:tno},function(data){
              // alert(data);
                if(data.trim()=="0"){
                     w.prop('disabled', false);  
                } 
                else
                {
                     $('#n').html(data);
                     v.val("");
                      $(".rtw").prop('disabled', true);
                }
            });
             
            if(t===null&&t===" ")
            {
                alert('PLEASE ENTER TARE WEIGHT!!!');
            }
            
            $(this).closest('tr').find('.pro').prop('disabled', false);
            });
           
           $("#Date1").blur(function(){
           var d=$(this).val();
            $.post('checkdate.jsp',{d:d},function(data){
                
               $('#m').html(data);
            });
                $(".auto").prop('disabled', false);
           });
           
           $('.pro').blur(function()
           {
                var x=$(this).val();
                alert(x);
                $.post('tnk_search.jsp',{m:x},function(data)
                {
         
                    $('.list').html(data);
                });
                
               $(this).closest('tr').find('.c2').prop('disabled', false);
           });

});             
    }
                  function print()
                  {
                      window.location="print.jsp";
                  }
                  function check()
                  {
                      window.location="checkdate.jsp";
                  }
                  
        </script>
  </div>
</form>
    
    </body>
</html>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*;" %>
<%    if(request.getParameter("b4")!=null)   
{
      String dt=request.getParameter("t1");      
     //String t2=request.getParameter("t2");
           try
        {

     Class.forName("oracle.jdbc.driver.OracleDriver");
           // DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            Connection conn =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","brp","brp");
           
      Statement stmt=conn.createStatement();
      
  
    
    String x[]=request.getParameterValues("a");
    String y[]=request.getParameterValues("b");
    String z[]=request.getParameterValues("c");
    String w[]=request.getParameterValues("d");
    String r[]=request.getParameterValues("e");
    String s[]=request.getParameterValues("f");
   // String t[]=request.getParameterValues("g");
    String sql;
    int rss=0,tw,rtw;
   out.print("length="+x.length);
    for(int i=0;i<x.length;i++){
            String tno=x[i];
            String b=y[i];
            tw=Integer.parseInt(b);
            String c=z[i];
            rtw=Integer.parseInt(c);
            String tn1=w[i];
             String tn2=r[i];
            String rm=s[i];
             //String g=x[i];
          sql="insert into CCDTAREWT_TAB(DESP_DATE,TRUCK_NO,TARE_WT,RE_TAREWT,REMARKS,TANKNO1,TANKNO2) values(TO_DATE('"+dt+"','yyyy/mm/dd'),'"+tno+"','"+tw+"','"+rtw+"','"+rm+"','"+tn1+"','"+tn2+"')"; 
            //out.print(sql);
            
       rss=stmt.executeUpdate(sql);
    }
          conn.close();
            if(rss!=0)
          out.print("INSERTED");
      else
          out.print("error");
    
     
     
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