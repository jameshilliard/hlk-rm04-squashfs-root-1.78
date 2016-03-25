<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="author" content="Hi-Link" /> 
<meta name="Copyright" content="Hi-Link" /> 
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->

<style type="text/css"> 
.open 
{ 
background-color:#F79646;
color:#000000; 
text-align: center; 
font-size:300%;
} 
.close 
{ 
background-color:#000000;
color:#ffffff; 
text-align: center; 
font-size:300%;
} 
</style> 


<script language="JavaScript" type="text/javascript">


function style_display_on()
{
	if (window.ActiveXObject)
	{ // IE
		return "block";
	}
	else if (window.XMLHttpRequest)
	{ // Mozilla, Safari,...
		return "";
	}
}

function change(relay) {
	
	var form_=document.getElementById("change_form");

	document.getElementById("change_name").value=relay;

	if(relay=='1')
		document.getElementById("change_value").value=(("<% relay_get(1); %>" == '1')?'0':'1');
	else if(relay=='2')
		document.getElementById("change_value").value=(("<% relay_get(2); %>" == '1')?'0':'1');
	else if(relay=='3')
		document.getElementById("change_value").value=(("<% relay_get(3); %>" == '1')?'0':'1');
	else if(relay=='4')
		document.getElementById("change_value").value=(("<% relay_get(4); %>" == '1')?'0':'1');
	else if(relay=='5')
		document.getElementById("change_value").value=(("<% relay_get(5); %>" == '1')?'0':'1');

	form_.submit();
	return;
		
}

function initValue() {
//return;	
	var relay_enable1="<% relay_enbale(1); %>";
	var relay_enable2="<% relay_enbale(2); %>";
	var relay_enable3="<% relay_enbale(3); %>";
	var relay_enable4="<% relay_enbale(4); %>";
	var relay_enable5="<% relay_enbale(5); %>";
	
	if(relay_enable1=='1'){
		document.getElementById("relay1").style.visibility = "visible";
		document.getElementById("relay1").style.display = style_display_on();
		document.getElementById("relay11").style.visibility = "visible";
		document.getElementById("relay11").style.display = style_display_on();
	}
	else{
		document.getElementById("relay1").style.visibility = "hidden";
		document.getElementById("relay1").style.display = "none";
		document.getElementById("relay11").style.visibility = "hidden";
		document.getElementById("relay11").style.display = "none";
	}
	
	if(relay_enable2=='1'){
		document.getElementById("relay2").style.visibility = "visible";
		document.getElementById("relay2").style.display = style_display_on();
		document.getElementById("relay21").style.visibility = "visible";
		document.getElementById("relay21").style.display = style_display_on();
	}
	else{
		document.getElementById("relay2").style.visibility = "hidden";
		document.getElementById("relay2").style.display = "none";
		document.getElementById("relay21").style.visibility = "hidden";
		document.getElementById("relay21").style.display = "none";
	}
	
	if(relay_enable3=='1'){
		document.getElementById("relay3").style.visibility = "visible";
		document.getElementById("relay3").style.display = style_display_on();
		document.getElementById("relay31").style.visibility = "visible";
		document.getElementById("relay31").style.display = style_display_on();
	}
	else{
		document.getElementById("relay3").style.visibility = "hidden";
		document.getElementById("relay3").style.display = "none";
		document.getElementById("relay31").style.visibility = "hidden";
		document.getElementById("relay31").style.display = "none";
	}
	
	if(relay_enable4=='1'){
		document.getElementById("relay4").style.visibility = "visible";
		document.getElementById("relay4").style.display = style_display_on();
		document.getElementById("relay41").style.visibility = "visible";
		document.getElementById("relay41").style.display = style_display_on();
	}
	else{
		document.getElementById("relay4").style.visibility = "hidden";
		document.getElementById("relay4").style.display = "none";
		document.getElementById("relay41").style.visibility = "hidden";
		document.getElementById("relay41").style.display = "none";
	}
	
	if(relay_enable5=='1'){
		document.getElementById("relay5").style.visibility = "visible";
		document.getElementById("relay5").style.display = style_display_on();
		document.getElementById("relay51").style.visibility = "visible";
		document.getElementById("relay51").style.display = style_display_on();
	}
	else{
		document.getElementById("relay5").style.visibility = "hidden";
		document.getElementById("relay5").style.display = "none";
		document.getElementById("relay51").style.visibility = "hidden";
		document.getElementById("relay51").style.display = "none";
	}
	
	if("<% relay_get(1); %>" == '1'){
		document.getElementById("relay1_").className='open';
	}
	else{
		document.getElementById("relay1_").className='close';
		
	}
	if("<% relay_get(2); %>" == '1'){
		document.getElementById("relay2_").className='open';
	}
	else{
		document.getElementById("relay2_").className='close';
		
	}
	if("<% relay_get(3); %>" == '1'){
		document.getElementById("relay3_").className='open';
	}
	else{
		document.getElementById("relay3_").className='close';
		
	}
	if("<% relay_get(4); %>" == '1'){
		document.getElementById("relay4_").className='open';
	}
	else{
		document.getElementById("relay4_").className='close';
		
	}
	if("<% relay_get(5); %>" == '1'){
		document.getElementById("relay5_").className='open';
	}
	else{
		document.getElementById("relay5_").className='close';
		
	}


	var time0_en="<% relay_time_get(0,0); %>";
	if(time0_en=='1')
		document.getElementById("relay_time1_en").checked=true;
	else
		document.getElementById("relay_time1_en").checked=false;
	
	var time1_en="<% relay_time_get(1,0); %>";
	if(time1_en=='1')
		document.getElementById("relay_time2_en").checked=true;
	else
		document.getElementById("relay_time2_en").checked=false;
	
	var time2_en="<% relay_time_get(2,0); %>";
	if(time2_en=='1')
		document.getElementById("relay_time3_en").checked=true;
	else
		document.getElementById("relay_time3_en").checked=false;
	
	var time3_en="<% relay_time_get(3,0); %>";
	if(time3_en=='1')
		document.getElementById("relay_time4_en").checked=true;
	else
		document.getElementById("relay_time4_en").checked=false;
	
	var time4_en="<% relay_time_get(4,0); %>";
	if(time4_en=='1')
		document.getElementById("relay_time5_en").checked=true;
	else
		document.getElementById("relay_time5_en").checked=false;
		

	
}





</script>


<body onLoad="initValue()"  style="margin:0px"    width="100%" bgcolor="#E5E5E5">
<table  width="100%"  border="0" >
<form method=post id="change_form" name="change_form" action="/goform/relay_set" onSubmit="">
<input id="change_name" name="change_name" value="0" type="hidden" >
<input id="change_value" name="change_value" value="0" type="hidden" >
</form>
<p></p>

	<tr >
	<td width="5%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	<td width="25%"></td>
	</tr>
	<tr >
	<td ></td>
	<td ></td>
	<td  ></td>
	<td   align= "right"><input type="button" onclick="window.location.href='./power_config.asp';" value="Config"></td>
	</tr>
<tr  id="relay1" height="40px">
	<td >&nbsp;</td>
	<td   id="relay1_"  class="open"  onClick="change(1)" >"<% relay_name(1); %>"</td>
	<td colspan="2">


	</td>
	
</tr>
<tr  id="relay11" height="40px">
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td colspan="2">

<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">
<table  width="100%"  height="100%" border="0" >
	<tr >
	<td width="10%" align="center"><input id="relay_time1_en" name="relay_time1_en"  type="checkbox"  value="1"> </td>
	<td width="30%">O:<input id="relay_time1_1" name="relay_time1_1"  type="text"  value="<% relay_time_get(0,1); %>">s</td>
	<td width="30%">X:<input id="relay_time1_2" name="relay_time1_2"  type="text"  value="<% relay_time_get(0,2); %>">s</td>
	<td width="30%"><input type="submit" onclick="" value="Apply"></td>
	</tr>
</table>
</form>

	</td>
	
</tr>
<tr >
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
</tr>
<tr  id="relay2" height="40px">
	<td >&nbsp;</td>
	<td  id="relay2_"   class="close"  onClick="change(2)" >"<% relay_name(2); %>"</td>
	<td colspan="2">

	</td>
</tr>
<tr  id="relay21" height="40px">
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td colspan="2">

<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">
<table  width="100%"  height="100%" border="0" >
	<tr >
	<td width="10%" align="center"><input id="relay_time2_en" name="relay_time2_en"  type="checkbox"  value="1"> </td>
	<td width="30%">O:<input id="relay_time2_1" name="relay_time2_1"  type="text"  value="<% relay_time_get(1,1); %>">s</td>
	<td width="30%">X:<input id="relay_time2_2" name="relay_time2_2"  type="text"  value="<% relay_time_get(1,2); %>">s</td>
	<td width="30%"><input type="submit" onclick="" value="Apply"></td>
	</tr>
</table>
</form>

	</td>
</tr>
<tr >
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
</tr>
<tr  id="relay3" height="40px">
	<td >&nbsp;</td>
	<td  id="relay3_"   class="close"  onClick="change(3)" >"<% relay_name(3); %>"</td>
	<td colspan="2">


	</td>
</tr>
<tr  id="relay31" height="40px">
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td colspan="2">

<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">
<table  width="100%"  height="100%" border="0" >
	<tr >
	<td width="10%" align="center"><input id="relay_time3_en" name="relay_time3_en"  type="checkbox"  value="1"> </td>
	<td width="30%">O:<input id="relay_time3_1" name="relay_time3_1"  type="text"  value="<% relay_time_get(2,1); %>">s</td>
	<td width="30%">X:<input id="relay_time3_2" name="relay_time3_2"  type="text"  value="<% relay_time_get(2,2); %>">s</td>
	<td width="30%"><input type="submit" onclick="" value="Apply"></td>
	</tr>
</table>
</form>

	</td>
</tr>
<tr >
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
</tr>
<tr  id="relay4" height="40px">
	<td >&nbsp;</td>
	<td   id="relay4_"  class="close"  onClick="change(4)" >"<% relay_name(4); %>"</td>
	<td colspan="2">

	</td>
</tr>
<tr  id="relay41" height="40px">
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td colspan="2">

<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">
<table  width="100%"  height="100%" border="0" >
	<tr >
	<td width="10%" align="center"><input id="relay_time4_en" name="relay_time4_en"  type="checkbox"  value="1"> </td>
	<td width="30%">O:<input id="relay_time4_1" name="relay_time4_1"  type="text"  value="<% relay_time_get(3,1); %>">s</td>
	<td width="30%">X:<input id="relay_time4_2" name="relay_time4_2"  type="text"  value="<% relay_time_get(3,2); %>">s</td>
	<td width="30%"><input type="submit" onclick="" value="Apply"></td>
	</tr>
</table>
</form>

	</td>
</tr>
<tr >
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td >&nbsp;</td>
</tr>
<tr  id="relay5" height="40px">
	<td >&nbsp;</td>
	<td    id="relay5_"  class="close"  onClick="change(5)" >"<% relay_name(5); %>"</td>
	<td colspan="2">

	</td>
</tr>
<tr  id="relay51" height="40px">
	<td >&nbsp;</td>
	<td >&nbsp;</td>
	<td colspan="2">

<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">
<table  width="100%"  height="100%" border="0" >
	<tr >
	<td width="10%" align="center"><input id="relay_time5_en" name="relay_time5_en"  type="checkbox"  value="1"> </td>
	<td width="30%">O:<input id="relay_time5_1" name="relay_time5_1"  type="text"  value="<% relay_time_get(4,1); %>">s</td>
	<td width="30%">X:<input id="relay_time5_2" name="relay_time5_2"  type="text"  value="<% relay_time_get(4,2); %>">s</td>
	<td width="30%"><input type="submit" onclick="" value="Apply"></td>
	</tr>
</table>
</form>

	</td>
</tr>
	
</table>
</body></html>
