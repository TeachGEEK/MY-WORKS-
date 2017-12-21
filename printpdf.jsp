<!DOCTYPE html>
<html >
<head>
  <script type="text/javascript">

 function printPDF()
  {
  if (navigator.appName == 'Microsoft Internet Explorer') {

     //Wait until PDF is ready to print    
    if (typeof document.getElementById("pdfDocument").print == 'undefined') {

        setTimeout(function(){printPDF("pdfDocument");}, 1000);

      } else {

        var x = document.getElementById("pdfDocument");
        x.print();
     }

   } else{

    PDFIframeLoad();  // for chrome 
  }
 }

//for Chrome 
function PDFIframeLoad() {
var iframe = document.getElementById('iframe_a');
   if(iframe.src) {
        var frm = iframe.contentWindow;

            frm.focus();// focus on contentWindow is needed on some ie versions  
            frm.print();
            return false;
    }
}

</script>



</head>
<body>
 PRINT PDF IN IE AND CHROME 
<table>
<tr>
<td>
<iframe id="iframe_a" name='iframe_a' src="PDF.pdf"    width="50%"    height="50%"   ></iframe>        <!-- for Chrome -->

<embed    type="application/pdf"    src="PDF.pdf"    id="pdfDocument"    width="0%"    height="0%" >
</embed> <!-- for IE - u can display  setted to  0% width and height-->

<input type="submit"  value="Print"name="Submit" id="printbtn"onclick="printPDF()" />
</td></tr><tr>
<td>
</td>
</tr></table>
</body>
</html>