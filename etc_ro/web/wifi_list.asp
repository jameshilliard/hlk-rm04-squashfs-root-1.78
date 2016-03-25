<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>AP List</title>


<style type="text/css"> 
body 
{ 
margin: 0px; 
padding: 0px; 
font-size: 13px; 
font-family:Arial ,sans-serif;
} 
.input_style 
{ 
padding: 6px 0px; 
width: 600px; 
margin: 0px auto; 
border-bottom: #666666 1px dotted; 
} 

.inputx
{
height: 18px;
line-height: 18px;
text-indent:10px;
width:210px;
font-family:Arial;
vertical-align: middle;
background-color: white;
border: 1px solid #999;
-webkit-border-radius: 5px 5px 5px 5px;
-moz-border-radius: 5px 5px 5px 5px;
border-radius: 5px 5px 5px 5px;
-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
-moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
-webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
-moz-transition: border linear 0.2s, box-shadow linear 0.2s;
-ms-transition: border linear 0.2s, box-shadow linear 0.2s;
-o-transition: border linear 0.2s, box-shadow linear 0.2s;
transition: border linear 0.2s, box-shadow linear 0.2s; 
}

.input_style span 
{ 
display: inline-block; 
width: 15px; 
height: 15px; 
text-align: left; 
vertical-align: middle; 
_overflow: hidden; 
} 
.input_style label 
{ 
padding: 0px 6px; 
cursor: pointer; 
} 
.input_style input 
{ 
cursor: pointer; 
} 
.checkbox 
{ 
padding: 0px; 
list-style: none; 
width: 600px; 
margin: 6px auto; 
height: auto; 
overflow: hidden; 
} 
.checkbox li 
{ 
padding: 3px 0px; 
float: left; 
} 
h4 
{ 
width: 600px; 
margin: 0px auto; 
margin-top: 30px; 
} 
.button 
{ 
width: 600px; 
text-align: center; 
margin: 0px auto; 
} 


.btn_mouseup {
	background-image:url('1.jpg');
	width: 30px; 
	height: 30px; 
}
.btn_mousedown {
	background-image:url('2.jpg');
	width: 30px; 
	height: 30px; 
}

::-moz-focus-inner{border:0px;}
     
#preloader {
background-image: url(1.jpg);
background-image: url(2.jpg);
width: 0px;
height: 0px;
display: inline;
}

</style> 


<script language="JavaScript" type="text/javascript">

function GetArgsFromHref(sHref, sArgName) 
{ 
	var args = sHref.split("?"); 
	var retval = ""; 

	if(args[0] == sHref) /*参数为空*/ 
	{ 
		return retval; /*无需做任何处理*/ 
	} 
	var str = args[1]; 
	args = str.split("&"); 
	for(var i = 0; i < args.length; i ++) 
	{ 
		str = args[i]; 
		var arg = str.split("="); 
		if(arg.length <= 1) continue; 
		if(arg[0] == sArgName) retval = arg[1]; 
	} 
	
	return retval; 
} 


function exit_wizard() 
{
	window.location.href='/home.asp';
}

function back_() 
{
//	window.location.href='./scaning.asp';
	var par='./wizard.asp';
{
	var ap_ssid=GetArgsFromHref(window.location.href, 'ap_ssid');
	var ap_pass=GetArgsFromHref(window.location.href, 'ap_pass');
	par=par+'?ap_ssid='+ap_ssid+'&ap_pass='+ap_pass;
}

	window.location.href=par;
}

function rescan_() 
{
//	window.location.href='./scaning.asp';
	var par='./wifi_list.asp';
{
	var ap_ssid=GetArgsFromHref(window.location.href, 'ap_ssid');
	var ap_pass=GetArgsFromHref(window.location.href, 'ap_pass');
	par=par+'?ap_ssid='+ap_ssid+'&ap_pass='+ap_pass;
}

	window.location.href=par;
}

function next_() 
{
	var ch='';
	var ssid='';
	var bssid='';
	var sec='';

	var w=document.getElementById("site_table");

	var count=0; 
	var i,j;
	
		for (i=2; i < w.rows.length; i++) { 
			if(true == document.wifi_sel_for.ssid_sel[i-2].checked){
				ch=w.rows[i].cells[1].innerHTML;
				ssid=w.rows[i].cells[2].innerHTML;
				bssid=w.rows[i].cells[3].innerHTML;
				sec=w.rows[i].cells[4].innerHTML;
				break;
			}
		}
	

//	var par='./wifi_config.asp'+'?ch='+ch+'&ssid='+ssid+'&bssid='+bssid+'&sec='+sec;
	var par='./wifi_list_2.asp'+'?ch='+ch+'&ssid='+ssid+'&sec='+sec;
	
{
	var ap_ssid=GetArgsFromHref(window.location.href, 'ap_ssid');
	var ap_pass=GetArgsFromHref(window.location.href, 'ap_pass');
	par=par+'&ap_ssid='+ap_ssid+'&ap_pass='+ap_pass;
}

	window.location.href=par;
}

function initValue()
{
{
	var ssid_old="<% getCfgToHTML(1, "staSSID"); %>";

	var w=document.getElementById("site_table");
	var i;
	
	for (i=2; i < w.rows.length; i++) { 
		if(w.rows[i].cells[2].innerHTML== ssid_old)
			document.wifi_sel_for.ssid_sel[i-2].checked=true;
		else
			document.wifi_sel_for.ssid_sel[i-2].checked=false;
	}

}
//	radio_style(); 
radio_check();
}


function getid(id) { return document.getElementById(id); } 
function gettag(tag, obj) { if (obj) { return obj.getElementsByTagName(tag) } else { return document.getElementsByTagName(tag) } } 
function addLoadEvent(func) { var oldonload = window.onload; if (typeof window.onload != "function") { window.onload = func; } else { window.onload = function() { oldonload(); func(); } }; } 
function radio_style() {
	if (gettag("input")) { 
		var r = gettag("input"); 
		function select_element(obj, type) {
			//obj.style.height = "30px"; 
			//obj.parentNode.style.height = "40px"; 
			obj.parentNode.style.background = "url(radio1.jpg) no-repeat center center"; 
			if (obj.type == "checkbox") { 
				obj.parentNode.style.background = "url(radio1.jpg) no-repeat center center"; 
			} 
			if (type) { 
				obj.parentNode.style.background = "url(radio0.jpg) no-repeat  center center"; 
				if (obj.type == "checkbox") { obj.parentNode.style.background = "url(radio0.jpg) no-repeat  center center"; } 
				} 
		} 
		for (var i = 0; i < r.length; i++) { 
			if (r[i].type == "radio" || r[i].type == "checkbox") { 
				r[i].style.opacity = 0; r[i].style.filter = "alpha(opacity=0)";
				r[i].onclick = function() { select_element(this); unfocus(); } 
				if (r[i].checked == true) { select_element(r[i]); } else { select_element(r[i], 1); } 
			} 
		} 
		function unfocus() {
			for (var i = 0; i < r.length; i++) { 
			if (r[i].type == "radio" || r[i].type == "checkbox") { if (r[i].checked == false) { select_element(r[i], 1) } } 
			} 
		} 
	} 
} //3 
function addevent() {
	radio_style(); 
} 


//addLoadEvent(addevent); 


function radio_check() {
	var w=document.getElementById("site_table");
	var i;
	
	for (i=2; i < w.rows.length; i++) { 
		if(true == document.wifi_sel_for.ssid_sel[i-2].checked){
;//			getid("radio_i"+(i-2)).src="radio1.jpg";
		}
		else{
;//			getid("radio_i"+(i-2)).src="radio0.jpg";
		}
			
	}
} 


function radio_click(num) {
	var w=document.getElementById("site_table");
	var i;
	
	for (i=2; i < w.rows.length; i++) { 
		if((i-2) == num)
			document.wifi_sel_for.ssid_sel[i-2].checked=true;
		else
			document.wifi_sel_for.ssid_sel[i-2].checked=false;
	}

	radio_check();
} 

</script>
</head>

<body onLoad="initValue()"  style="margin:0px"    width="100%"  bgcolor="#EAEAEA">

<table  width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#EAEAEA" align="center" >
  <tr>
    <th width="3%" scope="col">&nbsp;</th>
    <th width="30%" scope="col" align="left"><span  >
</span></th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="44%" scope="col">&nbsp;</th>
    <th width="3%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td  colspan="3" align="center">
<form method=post name=wifi_sel_for action="/goform/wifi_sel_for" >
	<table  width="100%" id="site_table" border="0" cellpadding="2" cellspacing="1" align="center">
	  <tr> 
	    <td></td>
	  </tr>
  <tr align="center"> 
    <td></td>
    <td>Ch</td>
    <td>SSID</td>
    <td>BSSID</td>
    <td>Security</td>
    <td>Signal(%)</td>
    <td>W-Moe</td>
    <td>ExtCh</td>
    <td>NT</td>
  </tr>
	  <% ApcliScan3(); %>
	</table>
</form>
	</td>
    <td >&nbsp;</td>
  </tr>
  
  <tr>
    <td align="right">&nbsp;</td>
    <td  align="center"  colspan="3">
	<table   width="100%" id="buttonx" border="0" cellpadding="2" cellspacing="1">
	  <tr> 
	    <td width="30%"  align="center">

</td>
	    <td width="40%"  align="center" >
<input name="Submit" value="Rescan" type="button"  onClick="rescan_()">
	    </td>
	    <td width="30%"   align="center">
<input name="Submit" value="Next" type="button"  onClick="next_()">
	    </td>
  </tr>
</table>
	</td>
    <td align="right">&nbsp;</td>
  </tr>

</table>

</body>
</html>

