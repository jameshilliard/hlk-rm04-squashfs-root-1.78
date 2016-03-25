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
} 
.close 
{ 
background-color:#000000;
color:#ffffff; 
text-align: center; 
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


function initValue() {
//return;	
	var relay_enable1="<% relay_enbale(1); %>";
	var relay_enable2="<% relay_enbale(2); %>";
	var relay_enable3="<% relay_enbale(3); %>";
	var relay_enable4="<% relay_enbale(4); %>";
	var relay_enable5="<% relay_enbale(5); %>";
	
	if(relay_enable1=='1'){
		document.getElementById("relay_1_en").checked=true;
	}
	else{
		document.getElementById("relay_1_en").checked=false;
	}
	
	if(relay_enable2=='1'){
		document.getElementById("relay_2_en").checked=true;
	}
	else{
		document.getElementById("relay_2_en").checked=false;
	}
	
	if(relay_enable3=='1'){
		document.getElementById("relay_3_en").checked=true;
	}
	else{
		document.getElementById("relay_3_en").checked=false;
	}
	
	if(relay_enable4=='1'){
		document.getElementById("relay_4_en").checked=true;
	}
	else{
		document.getElementById("relay_4_en").checked=false;
	}
	
	if(relay_enable5=='1'){
		document.getElementById("relay_5_en").checked=true;
	}
	else{
		document.getElementById("relay_5_en").checked=false;
	}


	var web_port="<% getCfgGeneral(1, "web_port"); %>";

	if(web_port!='')
		document.getElementById("web_port").value=web_port;
	
}





</script>


<body onLoad="initValue()"  style="margin:0px"    width="100%" bgcolor="#E5E5E5">
<table  width="100%"  border="0" >
<form method=post id="change_form" name="change_form" action="/goform/relay_time_set" onSubmit="">

	<tr >
	<td width="10%" align="center">1 </td>
	<td width="10%"><input id="relay_1_en" name="relay_1_en"  type="checkbox"  value="1"></td>
	<td width="50%"><input id="relay_1_name" name="relay_1_name"  type="text"  value="<% relay_name(1); %>"></td>
	<td width="30%">&nbsp;</td>
	</tr>
	<tr >
	<td align="center">2 </td>
	<td ><input id="relay_2_en" name="relay_2_en"  type="checkbox"  value="1"></td>
	<td ><input id="relay_2_name" name="relay_2_name"  type="text"  value="<% relay_name(2); %>"></td>
	<td >&nbsp;</td>
	</tr>
	<tr >
	<td width="10%" align="center">3 </td>
	<td ><input id="relay_3_en" name="relay_3_en"  type="checkbox"  value="1"></td>
	<td ><input id="relay_3_name" name="relay_3_name"  type="text"  value="<% relay_name(3); %>"></td>
	<td >&nbsp;</td>
	</tr>
	<tr >
	<td width="10%" align="center">4 </td>
	<td ><input id="relay_4_en" name="relay_4_en"  type="checkbox"  value="1"></td>
	<td ><input id="relay_4_name" name="relay_4_name"  type="text"  value="<% relay_name(4); %>"></td>
	<td >&nbsp;</td>
	</tr>
	<tr >
	<td width="10%" align="center">5 </td>
	<td ><input id="relay_5_en" name="relay_5_en"  type="checkbox"  value="1"></td>
	<td ><input id="relay_5_name" name="relay_5_name"  type="text"  value="<% relay_name(5); %>"></td>
	<td >&nbsp;</td>
	</tr>
	<tr >
	<td width="10%" align="center">web port:</td>
	<td ><input id="web_port" name="web_port"  type="text"  value="80"></td>
	<td ></td>
	<td >&nbsp;</td>
	</tr>
	
	<tr >
	<td colspan='4' align="center">
		<br>
	</tr>
	<tr >
	<td colspan='4' align="center">
<table  width="100%"  border="0" >
	<tr >
	<td width="20%" align="right"><input id="cancel" name="cancel"  type="button" onclick="window.location.href='./power.asp';"  value="Cancel"></td>
	<td width="5%"></td>
	<td width="75%" align="left"><input id="Apply" name="Apply"  type="submit"  value="Apply"></td>
	
	</tr>
</table>
	</td>
	</tr>
</form>
</table>
</body></html>
