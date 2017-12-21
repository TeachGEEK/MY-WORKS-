<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
        <script type="text/javascript">
        $(function() 
        {
           $("#Date1").datepicker();
        });
        </script>
        <style type="text/css">
        .ui-datepicker { font-size:8pt !important}
        </style>
        <title></title>
    </head>
     <body style="background-color:darkcyan;">
        <h1 style="color:cyan;" align="center"> <b><u>ENTER DATA FOR RE-WEIGHT</u></b></h1>
        <div align="right">
            BSP/CMMS&CBMS
        </div>
        <div style="border:2px solid ; border-radius: 30px; background-color: blanchedalmond">
            <br><br><h3 style="color:brown;" align="center"> <b>DISPATCH DATE:</b><input type="text" style="border-style: inset;" id="Date1"class="c1" name="t1"></h3>
       
       <div>
               <table align="center">
                   <tr>
                       <th>TRUCK NO</th><th>CAL. WT.</th><th>WB. WEIGHT</th><th>WB. VOL</th><th>RB RE WT.</th> 
                   </tr>
                   <tr>
                    <td><input type="text"style="border-style: inset;" class="c1" name="t2"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t3"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t4"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t5"></td>
                    <td><input type="text"style="border-style: inset;" class="c1"name="t6"></td>
                    
                   </tr><br>
                  <tr>
                    <td><input type="text"style="border-style: inset;"class="c1" name="t7"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t8"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t9"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t10"></td>
                    <td><input type="text"style="border-style: inset;" class="c1"name="t11"></td>
                    
                  </tr><br>
                  <tr>
                    <td><input type="text"style="border-style: inset;"class="c1" name="t12"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t13"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t14"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t15"></td>
                    <td><input type="text"style="border-style: inset;"class="c1" name="t16"></td>
                    
                  </tr><br>
                  <tr>
                    <td><input type="text"style="border-style: inset;"class="c1" name="17"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t18"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t19"></td>
                    <td><input type="text" style="border-style: inset;"class="c1" name="t20"></td>
                    <td><input type="text"style="border-style: inset;"class="c1" name="t21"></td>
                    
                  </tr>
               </table>
               <br><br><br>
               <div align="center">
               &emsp; <input type="button" value="UPDATE" name="b1" onclick="pass()">&nbsp;
               &emsp; <input type="button" value="CLEAR" name="b2" onclick="cleartext()">&nbsp;
               &emsp; <input type="button" value="EXIT" name="b3" onclick="exit()"><br><br>
               </div><br><br>
        </div>
        <script>
            function exit()
            {
                var r = confirm ('DO YOU WANT TO EXIT');
                if(r===true)
                    window.location="home.jsp";
                else
                    window.loaction="reweight.jsp";
            }
            function cleartext()
            {
                var elements = [] ;
               
                elements = document.getElementsByClassName("c1");
                
                for(var i=0; i<elements.length ; i++){
                     elements[i].value = "" ;
                    }
            }
        </script>
    </body>
</html>

