
<html>
    <head>
         <link rel="stylesheet" href="bootstrap.min.css">
          <script src="jquery.min.js"></script>
          <script src="bootstrap.min.js"></script>
        <script>
            $(function()
            {
                  $( ".datep" ).datepicker();
            });
        </script>
        <style>
            
tr.spaceUnder>td {
  padding-bottom: 1em;
}
.spaceUnder td{
     padding-left: 1em;
     padding-right: 1em;
}
table.ex2 {
    border-collapse: separate;
    border-spacing: 10px 50px;
}
.div3 {
    width: 300px;
    height: 200px;
    border: 2px solid black;
    box-sizing: border-box;
    background-color: powderblue;
}
        </style>
    </head>
    <body style="background-color: darkcyan;">
        <h1 style="color:darksalmon;" align="center"> <b><u>THE REPORT</u></b></h1>
                <div style="position:fixed; right:20px;top:53px;">
            BSP/CMMS&CBMS
        </div>
        <div style="border:2px solid ; background-color:blanchedalmond;border-radius: 30px">
            
            <br><br><table align="center" class="ex2">
                <tr class="spaceUnder">
                    <td>
                        <table class="div3">
                <tr class="spaceUnder"><td><input type="submit" value="TANK DETAILS" name="b1"></td></tr>
                <tr class="spaceUnder"><td><input type="submit" value="PRODUCT DETAILS" name="b2"></td></tr>
                <tr class="spaceUnder"><td><input type="submit" value="DIP CHART" name="b3"></td></tr>
                        </table>
                    </td>
                    <td>
                        <table class="div3">
                            <tr class="spaceUnder">
                                <td>FROM</td>
                                 <td></td>
                                  <td>TO</td>
                            </tr>
                            <tr>
                                <td><input type="text" class="datep" name="t1"></td>
                                 <td></td>
                                 <td><input type="text" class="datep" name="t2"></td>
                            </tr>
                            <tr class="spaceUnder">
                           <td></td> 
                            <td><input type="submit" value="CLEAR" name="b4" onclick="cleartext()"></td>
                            <td></td>
                            </tr>
                            <tr  class="spaceUnder">
                                <td></td>
                                <td><input type="submit" value="DAILY DESPATCH DETAILS"  name="b5"></td>
                                <td></td>
                            </tr>
                        </table>
                      </td>
                    <td  class="spaceUnder"> <input type="button" value="EXIT" name="b6" onclick="exit()"></td>
                </tr>
            </table>
    </div>
        
        <script>
            function exit()
            {
                var r=confirm("DO YOU WANT TO EXIT");
                if(r==true)
                    window.location="home.jsp";
                else
                    window.loaction="report.jsp";
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

