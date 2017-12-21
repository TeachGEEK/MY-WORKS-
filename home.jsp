<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HOMEPAGE</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2031 Green Age
http://www.tooplate.com/view/2031-green-age
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:10,
		animSpeed:800,
		pauseTime:1080,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false,
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.8, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script>

</head>
<body class="homepage" style="background-color: whitesmoke;" align="center">
<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	 <div style="background-color: cyan;" id="site_title"><img src="0.jpg" height="100px" width="900px"></div>
    </div>
    <div style="position:absolute;top:150px;">
    
        <div id="slider"  >
            <a href="#"><img src="1.jpg" /></a>
            <a href="#"><img src="4.jpg"  /></a>
            <a href="#"><img src="2.jpg"   /></a>
             <a href="#"><img src="6.jpg"   /></a>
          <a href="#"><img src="3.jpg" /></a>
          <a href="#"><img src="7.jpg" /></a>
          <a href="#"><img src="5.jpg" /></a>
          
        </div>
	</div>
    <div id="tooplate_menu"  style="background-color: powderblue; position: absolute; top:408px;left:0px; width:100%;">
        <ul align="center">
           
            &emsp; <li><a href="home.jsp" class="current">HOME</a></li> 
            <li><a href="truck_details.jsp">TRUCK REGISTRATION</a></li>
            <li><a href="verification.jsp">VERIFICATION</a></li>
            <li><a href="despatch.jsp">Despatch</a></li>
             <!----<li><a href="reweight.jsp">RE-WEIGHT</a></li>
           <li><a href="production.jsp">PRODUCTION</a></li>---->
            <li><a href="report.jsp">REPORT</a></li>
            <li><a href="EXIT.jsp">EXIT</a></li>
           
        </ul>    	
        <div class="cleaner"></div>
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_main" style="background-color: whitesmoke;">
    	
        <div class="col_w960">
            <h1><font  color="blue" style="color: lavenderblush; position: absolute; top:240px;left:200px; font-size:40px;font-family: Engravers MT;"> <b> BENZOL RECTIFICATION PLANT </b></font> </h1>
           
    
    	
</div>
    </div>   
</div>
        
     <!-- end of footer -->

</body>
</html>
