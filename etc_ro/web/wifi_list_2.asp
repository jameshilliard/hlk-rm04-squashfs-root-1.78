<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>WiFi Password</title>

<style type="text/css"> 
body 
{ 
margin: 0px; 
padding: 0px; 
} 
.input_style 
{ 
padding: 6px 0px; 
width: 600px; 
margin: 0px auto; 
border-bottom: #666666 1px dotted; 
} 

.head 
{ 
text-align:right;
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
	var par='./wifi_list.asp';
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
	var par='./scaning.asp';
{
	var ap_ssid=GetArgsFromHref(window.location.href, 'ap_ssid');
	var ap_pass=GetArgsFromHref(window.location.href, 'ap_pass');
	par=par+'?ap_ssid='+ap_ssid+'&ap_pass='+ap_pass;
}

	window.location.href=par;
}

var intxxx;
function close_w_()
{
	window.clearInterval(intxxx);
//	window.location.href='./connecting.asp';
}

function close_w()
{
	intxxx=self.setInterval(function(){close_w_()},1000);
}

function next_() 
{
	var wifi_conf='';
	if(CheckValue()){

		wifi_conf=wifi_conf+document.getElementById("apcli_ssid").value;
		wifi_conf=wifi_conf+',';
			
	if (document.wireless_apcli.apcli_mode.options.selectedIndex == 0){
		if (document.wireless_apcli.apcli_enc.value == "WEP") {
			wifi_conf=wifi_conf+'wep_open'
			wifi_conf=wifi_conf+','+document.getElementById("apcli_key1").value;
		}
		else if (document.wireless_apcli.apcli_enc.value == "None") {
			wifi_conf=wifi_conf+'none'
			wifi_conf=wifi_conf+', ';
		}
	}
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 1){
		wifi_conf=wifi_conf+'wep'
		wifi_conf=wifi_conf+','+document.getElementById("apcli_key1").value;
	}
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 2){
		if (document.wireless_apcli.apcli_enc.value == "TKIP") {
			wifi_conf=wifi_conf+'wpa_tkip'
		}
		else if (document.wireless_apcli.apcli_enc.value == "AES") {
			wifi_conf=wifi_conf+'wpa_aes'
		}
		wifi_conf=wifi_conf+','+document.getElementById("apcli_wpapsk").value;

	}
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 3){
		if (document.wireless_apcli.apcli_enc.value == "TKIP") {
			wifi_conf=wifi_conf+'wpa2_tkip'
		}
		else if (document.wireless_apcli.apcli_enc.value == "AES") {
			wifi_conf=wifi_conf+'wpa2_aes'
		}
		wifi_conf=wifi_conf+','+document.getElementById("apcli_wpapsk").value;
	}
	else {
		wifi_conf=wifi_conf+'auto'
		wifi_conf=wifi_conf+','+document.getElementById("apcli_wpapsk").value;

	}
		document.getElementById("wifi_conf").value=wifi_conf;
//		document.getElementById("notice_id").innerHTML='Connecting...Please Wait...';
		document.getElementById("wireless_apcli2").submit();
		//close_w();
	}
}

function SecurityModeSwitch()
{
	var mysel = document.wireless_apcli.apcli_enc;
	mysel.options.length = 0;
	if (document.wireless_apcli.apcli_mode.options.selectedIndex == 0) {
		mysel.options[0] = new Option("WEP", "WEP");
		mysel.options[1] = new Option("None", "NONE");
	}
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 1) {
		mysel.options[0] = new Option("WEP", "WEP");
	}
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 2 ||
		 document.wireless_apcli.apcli_mode.options.selectedIndex == 3) {
		mysel.options[0] = new Option("TKIP", "TKIP");
		mysel.options[1] = new Option("AES", "AES");
	}
}

function EncryptModeSwitch()
{
	document.getElementById("div_apcli_default_key").style.visibility = "hidden";
	document.getElementById("div_apcli_default_key").style.display = "none";
	document.wireless_apcli.apcli_default_key.disabled = true;
	document.getElementById("div_apcli_key1").style.visibility = "hidden";
	document.getElementById("div_apcli_key1").style.display = "none";
	document.wireless_apcli.apcli_key1.disabled = true;
	document.getElementById("div_apcli_key2").style.visibility = "hidden";
	document.getElementById("div_apcli_key2").style.display = "none";
	document.wireless_apcli.apcli_key2.disabled = true;
	document.getElementById("div_apcli_key3").style.visibility = "hidden";
	document.getElementById("div_apcli_key3").style.display = "none";
	document.wireless_apcli.apcli_key3.disabled = true;
	document.getElementById("div_apcli_key4").style.visibility = "hidden";
	document.getElementById("div_apcli_key4").style.display = "none";
	document.wireless_apcli.apcli_key4.disabled = true;
	document.getElementById("div_apcli_wpapsk").style.visibility = "hidden";
	document.getElementById("div_apcli_wpapsk").style.display = "none";
	document.wireless_apcli.apcli_wpapsk.disabled = true;

	if (document.wireless_apcli.apcli_enc.value == "WEP") {
		document.getElementById("div_apcli_default_key").style.visibility = "visible";
		document.getElementById("div_apcli_default_key").style.display = style_display_on();
		document.wireless_apcli.apcli_default_key.disabled = false;
		document.getElementById("div_apcli_key1").style.visibility = "visible";
		document.getElementById("div_apcli_key1").style.display = style_display_on();
		document.wireless_apcli.apcli_key1.disabled = false;
		document.getElementById("div_apcli_key2").style.visibility = "visible";
		document.getElementById("div_apcli_key2").style.display = style_display_on();
		document.wireless_apcli.apcli_key2.disabled = false;
		document.getElementById("div_apcli_key3").style.visibility = "visible";
		document.getElementById("div_apcli_key3").style.display = style_display_on();
		document.wireless_apcli.apcli_key3.disabled = false;
		document.getElementById("div_apcli_key4").style.visibility = "visible";
		document.getElementById("div_apcli_key4").style.display = style_display_on();
		document.wireless_apcli.apcli_key4.disabled = false;
	}
	else if (document.wireless_apcli.apcli_enc.value == "TKIP" ||
		 document.wireless_apcli.apcli_enc.value == "AES") {
		document.getElementById("div_apcli_wpapsk").style.visibility = "visible";
		document.getElementById("div_apcli_wpapsk").style.display = style_display_on();
		document.wireless_apcli.apcli_wpapsk.disabled = false;
		
		document.wireless_apcli.apcli_wpapsk.focus();
	}
}

function initValue()
{
	var ch=GetArgsFromHref(window.location.href, 'ch') ;
	var ssid=GetArgsFromHref(window.location.href, 'ssid') ;
	var bssid=GetArgsFromHref(window.location.href, 'bssid') ;
	var sec=GetArgsFromHref(window.location.href, 'sec') ;

document.getElementById("ap_channel").value=ch;
document.getElementById("apcli_ssid").value=ssid;
document.getElementById("apcli_bssid").value=bssid;


	if(sec.indexOf('WPA2PSK') != -1){
		document.getElementById("apcli_mode").options.selectedIndex = 3;
		SecurityModeSwitch();
		
		if(sec.indexOf('AES') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		} 
		else if(sec.indexOf('TKIP') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 0;
		}
		else{
			alert('ddd');
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		}
		EncryptModeSwitch();
	}
	else if(sec.indexOf('WPAPSK') != -1){
		document.getElementById("apcli_mode").options.selectedIndex = 2;
		SecurityModeSwitch();
		
		if(sec.indexOf('AES') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		} 
		else if(sec.indexOf('TKIP') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 0;
		}
		else{
			alert('ddd');
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		}
		EncryptModeSwitch();
	}
	else if(sec.indexOf('WEP') != -1){
		document.getElementById("apcli_mode").options.selectedIndex = 1;
		SecurityModeSwitch();
		
		if(sec.indexOf('AES') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		} 
		else if(sec.indexOf('TKIP') != -1){
			document.getElementById("apcli_enc").options.selectedIndex = 0;
		}
		else{
			alert('ddd');
			document.getElementById("apcli_enc").options.selectedIndex = 1;
		}
		EncryptModeSwitch();
	}
	else if(sec.indexOf('NONE') != -1){
		document.getElementById("apcli_mode").options.selectedIndex = 0;
		SecurityModeSwitch();
		
		document.getElementById("apcli_enc").options.selectedIndex = 1;
	
		EncryptModeSwitch();
	}

{
	var ssid_old="<% getCfgToHTML(1, "staSSID"); %>";
//	var bssid_old="<% getCfgGeneral(1, "ApCliBssid"); %>";
	var pass_old="<% getCfgGeneral(1, "staWpaPsk"); %>";

//	if((ssid == ssid_old)||(bssid == bssid_old)){
	if((ssid == ssid_old)){
		document.getElementById("apcli_wpapsk").value=pass_old;
	}

}

	if(sec.indexOf('NONE') != -1){
		next_();
	}

	var ap_ssid=GetArgsFromHref(window.location.href, 'ap_ssid');
	var ap_pass=GetArgsFromHref(window.location.href, 'ap_pass');

	document.getElementById("ap_ssid").value=ap_ssid;
	document.getElementById("ap_pass").value=ap_pass;
	
//	document.getElementById("apcli_wpapsk").focus();
}


function CheckHex(str)
{
	var len = str.length;

	for (var i = 0; i < str.length; i++) {
		if ((str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
				(str.charAt(i) >= 'a' && str.charAt(i) <= 'f') ||
				(str.charAt(i) >= 'A' && str.charAt(i) <= 'F')) {
			continue;
		}
		else
			return false;
	}
	return true;
}

function CheckInjection(str)
{
	var len = str.length;
	for (var i = 0; i < str.length; i++) {
		if (str.charAt(i) == ';' || str.charAt(i) == ',' ||
				str.charAt(i) == '\r' || str.charAt(i) == '\n') {
			return false;
		}
		else
			continue;
	}
	return true;
}

function CheckWep()
{
	var defaultid = 1*document.wireless_apcli.apcli_default_key.value;
	if (document.wireless_apcli.apcli_enc.value == "WEP") {
		if (eval("document.wireless_apcli.apcli_key"+defaultid).value.length == 0) {
			alert('Please input wep key'+defaultid+'!');
			eval("document.wireless_apcli.apcli_key"+defaultid).focus();
			return false;
		}
	}

	if (document.wireless_apcli.apcli_key1type.options.selectedIndex == 0) {
		for (var i = 1; i < 5; i++) {
			var mykey = eval("document.wireless_apcli.apcli_key"+i);
			if (mykey.value.length != 0 && mykey.value.length != 5 && mykey.value.length != 13) {
				alert('Please input 5 or 13 characters of wep key'+i);
				mykey.focus();
				return false;
			}
			if (!CheckInjection(mykey.value)) {
				alert('Wep key'+i+' contains invalid characters!');
				mykey.focus();
				return false;
			}
		}
	}
	else {
		for (var i = 1; i < 5; i++) {
			var mykey = eval("document.wireless_apcli.apcli_key"+i);
			if (mykey.value.length != 0 && mykey.value.length != 10 && mykey.value.length != 26) {
				alert('Please input 10 or 26 characters of wep key'+i);
				mykey.focus();
				return false;
			}
			if (!CheckHex(wireless_apcli.apcli_key1.value)) {
				alert('Invalid Wep key'+i+' format!');
				mykey.focus();
				return false;
			}
		}
	}
	return true;
}

function CheckWpa()
{
	if (document.wireless_apcli.apcli_wpapsk.value.length < 8) {
		alert("Pass Phrase length should be larger than 8!");
		document.wireless_apcli.apcli_wpapsk.focus();
		return false;
	}
	if (!CheckInjection(document.wireless_apcli.apcli_wpapsk.value)) {
		alert('Invalid characters in Pass Phrase.');
		document.wireless_apcli.apcli_wpapsk.focus();
		return false;
	}
	return true;
}

function CheckValue()
{
	if (document.wireless_apcli.apcli_ssid.value == '') {
		alert('empty SSID!');
		document.wireless_apcli.apcli_ssid.focus(); 
		return false;
	}

	if (document.wireless_apcli.apcli_bssid.value != '') {
		var re = /[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}:[A-Fa-f0-9]{2}/;
		if (!re.test(document.wireless_apcli.apcli_bssid.value)) {
			alert("BSSID format error!");
			document.wireless_apcli.apcli_bssid.focus(); 
			return false;
		}
	}

	if (document.wireless_apcli.apcli_mode.options.selectedIndex == 0)
		return CheckWep();
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 1)
		return CheckWep();
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 2)
		return CheckWpa();
	else if (document.wireless_apcli.apcli_mode.options.selectedIndex == 3)
		return CheckWpa();
	else {
		alert('Unknown Security Mode!');
		return false;
	}
}




</script>
</head>

<body onLoad="initValue()"  style="margin:0px"    width="100%"  bgcolor="#E5E5E5">

<table  width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#E5E5E5" align="center" >
  <tr>
  </tr>
  <tr>
    <th width="3%" scope="col">&nbsp;</th>
    <th width="30%" scope="col" align="left"><span  >
</span></th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="44%" scope="col">&nbsp;</th>
    <th width="3%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <th width="3%" scope="col">&nbsp;</th>
    <th width="30%" scope="col" ></th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="44%" scope="col" align="right"><span  >

</span></th>
    <th width="3%" scope="col">&nbsp;</th>
    
<form method=post id=wireless_apcli2 name=wireless_apcli2 action="/goform/ser2netconfig2" onSubmit="return CheckValue()">
<table  width="100%"  border="0" cellspacing="1" cellpadding="3" >
<input id="netmode" name="netmode" value="2" type="hidden" >
<input id="wifi_conf" name="wifi_conf" value="" type="hidden" >
<input id="dhcpd" name="dhcpd" value="0" type="hidden" >
<input id="dhcpc" name="dhcpc" value="1" type="hidden" >

<input id="ser2netNetSave" name="ser2netNetSave" value="1" type="hidden" >
</table>
</form>
    
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td  colspan="3">
<form method=post id=wireless_apcli name=wireless_apcli action="/goform/ser2netconfig2" onSubmit="return CheckValue()">
<table  width="100%"  border="0" cellspacing="1" cellpadding="3" >


<input id="ap_ssid" name="ap_ssid" value="0" type="hidden" >
<input id="ap_pass" name="ap_pass" value="0" type="hidden" >
<input id="ap_channel" name="ap_channel" value="0" type="hidden" >

  <tr> 
    <td class="head" colspan="2">SSID</td>
    <td><input class="inputx"  type=text id="apcli_ssid" name="apcli_ssid" size=20 maxlength=32 ></td>
  </tr>
  <tr  style="display:none" > 
    <td class="head" colspan="2">MAC Address (Optional)x</td>
    <td><input class="inputx"  type=text id="apcli_bssid" name="apcli_bssid" size=20 maxlength=17 ></td>
  </tr>
  <tr> 
    <td class="head" colspan="2">Security Mode</td>
    <td>
      <select class="selectx" name="apcli_mode" id="apcli_mode" size="1" onchange="SecurityModeSwitch(); EncryptModeSwitch();">
	<option value="OPEN">OPEN</option>
	<option value="SHARED">SHARED</option>
	<option value="WPAPSK">WPAPSK</option>
	<option value="WPA2PSK">WPA2PSK</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_enc">
    <td class="head" colspan="2">Encryption Type</td>
    <td>
      <select class="selectx" name="apcli_enc" id="apcli_enc" size="1" onchange="EncryptModeSwitch()">
      </select>
    </td>
  </tr>
  <tr id="div_apcli_default_key">
    <td class="head" colspan="2">WEP Default Key</td>
    <td>
      <select class="selectx" name="apcli_default_key" id="apcli_default_key" size="1">
	<option value="1">Key 1</option>
	<option value="2">Key 2</option>
	<option value="3">Key 3</option>
	<option value="4">Key 4</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_key1">
    <td class="head1" rowspan="4">WEP Keys</td>
    <td class="head2">WEP Key 1 :</td>
    <td>
      <input class="inputx"  name="apcli_key1" id="apcli_key1" maxlength="26" value="<% getCfgGeneral(1, "ApCliKey1Str"); %>">
      <select class="selectx" id="apcli_key1type" name="apcli_key1type" onchange="KeyTypeSwitch(1)"> 
        <option value="1">ASCII</option>
	<option value="0">Hex</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_key2">
    <td class="head2">WEP Key 2 :</td>
    <td>
      <input class="inputx"  name="apcli_key2" id="apcli_key2" maxlength="26" value="<% getCfgGeneral(1, "ApCliKey2Str"); %>">
      <select class="selectx" id="apcli_key2type" name="apcli_key2type" onchange="KeyTypeSwitch(2)"> 
        <option value="1">ASCII</option>
	<option value="0">Hex</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_key3">
    <td class="head2">WEP Key 3 :</td>
    <td>
      <input name="apcli_key3" id="apcli_key3" maxlength="26" value="<% getCfgGeneral(1, "ApCliKey3Str"); %>">
      <select class="selectx" id="apcli_key3type" name="apcli_key3type" onchange="KeyTypeSwitch(3)"> 
        <option value="1">ASCII</option>
	<option value="0">Hex</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_key4">
    <td class="head2">WEP Key 4 :</td>
    <td>
      <input class="inputx"  name="apcli_key4" id="apcli_key4" maxlength="26" value="<% getCfgGeneral(1, "ApCliKey4Str"); %>">
      <select class="selectx" id="apcli_key4type" name="apcli_key4type" onchange="KeyTypeSwitch(4)"> 
        <option value="1">ASCII</option>
	<option value="0">Hex</option>
      </select>
    </td>
  </tr>
  <tr id="div_apcli_wpapsk"> 
    <td class="head" colspan="2">Pass Phrase</td>
    <td><input class="inputx"  type=text name="apcli_wpapsk" id="apcli_wpapsk" size=20 maxlength=64 value=""></td>
  </tr>
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

<input name="Submit" value="Rescan" type="button"  onClick="back_()">

</td>
	    <td width="40%"  align="center" ></td>
	    <td width="30%"   align="center">
<input name="Submit" value="Apply" type="button"  onClick="next_()">

	    </td>
  </tr>
</table>
	</td>
    <td align="right">&nbsp;</td>
  </tr>

</table>

</body>
</html>

