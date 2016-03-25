<html>

<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->
<script language="JavaScript" type="text/javascript">
function initValue() {

	var Wtcp_auto = document.getElementById("tcp_auto");
	var Wtcp_cauto = document.getElementById("tcp_cauto");
	var Wescap = document.getElementById("escap");
	var Wrts = document.getElementById("rts");
	var WChannel = document.getElementById("Channel");
	var WXON = document.getElementById("XON");
	
	var tcp_auto = "<% ser2netconfig_get("tcp_auto"); %>";
	var tcp_cauto = "<% ser2netconfig_get("tcp_client_check"); %>";
	var escap = "<% ser2netconfig_get("escap"); %>";
	var Channel = "<% ser2netconfig_get("Channel"); %>";
	var RTS = "<% ser2netconfig_get("RTS"); %>";
	
	var XON = "<% ser2netconfig_get("XON_XOFF"); %>";

	if(tcp_auto == "1"){
		Wtcp_auto.options.selectedIndex = 1;
	}
	else{
		Wtcp_auto.options.selectedIndex = 0;
	}
	
	if(tcp_cauto == "1"){
		Wtcp_cauto.options.selectedIndex = 1;
	}
	else{
		Wtcp_cauto.options.selectedIndex = 0;
	}
	
	if(escap == "1"){
		Wescap.options.selectedIndex = 1;
	}
	else{
		Wescap.options.selectedIndex = 0;
	}
	
	if(RTS == "1"){
		Wrts.options.selectedIndex = 1;
	}
	else{
		Wrts.options.selectedIndex = 0;
	}
	
	if(XON == "1"){
		WXON.options.selectedIndex = 1;
	}
	else{
		WXON.options.selectedIndex = 0;
	}
	
	if(Channel == "1"){
		WChannel.options.selectedIndex = 0;
	}
	else if(Channel == "2"){
		WChannel.options.selectedIndex = 1;
	}
	else if(Channel == "3"){
		WChannel.options.selectedIndex = 2;
	}
	else if(Channel == "4"){
		WChannel.options.selectedIndex = 3;
	}
	else if(Channel == "5"){
		WChannel.options.selectedIndex = 4;
	}
	else if(Channel == "6"){
		WChannel.options.selectedIndex = 5;
	}
	else if(Channel == "7"){
		WChannel.options.selectedIndex = 6;
	}
	else if(Channel == "8"){
		WChannel.options.selectedIndex = 7;
	}
	else if(Channel == "9"){
		WChannel.options.selectedIndex = 8;
	}
	else if(Channel == "10"){
		WChannel.options.selectedIndex = 9;
	}
	else if(Channel == "11"){
		WChannel.options.selectedIndex = 10;
	}
	else if(Channel == "12"){
		WChannel.options.selectedIndex = 11;
	}
	else if(Channel == "13"){
		WChannel.options.selectedIndex = 12;
	}
	else if(Channel == "14"){
		WChannel.options.selectedIndex = 13;
	}
	else {
		WChannel.options.selectedIndex = 14;
	}


	var Wescap2 = document.getElementById("escap2");
	var escap2 = "<% ser2netconfig_get("escap2"); %>";

	if(escap2 == "1"){
		Wescap2.options.selectedIndex = 1;
	}
	else{
		Wescap2.options.selectedIndex = 0;
	}

	
}

function tcp_autoChanged() {
}
function tcp_cautoChanged() {
}

function escapChanged() {
}

function escap2Changed() {
}

function rtsChanged() {
}
function XONChanged() {
}

function ChannelChanged() {
	document.getElementById("ser2netNetSave").value='1';
}

function commit()
{
	return true;
}


</script>


<body onLoad="initValue()">
<table class="body"><tr><td>
<h1>Special Settings</h1>
<p></p>
<hr />
<form method="post" name="ser2netconfig" action="/goform/ser2netconfig2">
<input name="port" value="1" type="hidden">
<input id="ser2netSave" name="ser2netSave" value="1" type="hidden">
<input id="ser2netNetSave"  name="ser2netNetSave" value="0" type="hidden">
<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tbody>
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>

<tr >
<td >TCP AUTO CONNECT:</td>
<td  colspan="2"><select size="1" name="tcp_auto" id="tcp_auto"  onChange="tcp_autoChanged()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>
<tr >
<td >TCP Client Auto Check:</td>
<td  colspan="2"><select size="1" name="tcp_cauto" id="tcp_cauto"  onChange="tcp_cautoChanged()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>


<tr >
<td >SERIAL ESCAPE:</td>
<td  colspan="2"><select size="1" name="escap" id="escap"  onChange="escapChanged()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>

<tr >
<td >SERIAL ESCAPE2:</td>
<td  colspan="2"><select size="1" name="escap2" id="escap2"  onChange="escap2Changed()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>

<tr >
<td >SERIAL ESCAPE2 TIME:</td>
<td  colspan="2"><input size="8" name="escap2_time" id="escap2_time"  value="<% ser2netconfig_get("escap2_time"); %>">ms
	</input>
</td>
</tr>

<tr >
<td >SERIAL FRAME INTERVAL TIMEOUT:</td>
<td  colspan="2"><input size="8" name="uartpackintertimeout" id="uartpackintertimeout"  value="<% ser2netconfig_get("uartpackintertimeout"); %>">
	</input>
</td>
</tr>

<tr >
<td >Client Locale Port:</td>
<td  colspan="2"><input size="8" name="CLport" id="CLport"  value="<% ser2netconfig_get("CLport"); %>">
	</input>
</td>
</tr>

<tr >
<td >WIFI Channel:</td>
<td  colspan="2">
<select size="1" name="Channel" id="Channel"  onChange="ChannelChanged()">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">AUTO</option>
	</select>

</td>
</tr>

<tr >
<td >SERIAL RTS(GPIO_1):</td>
<td  colspan="2"><select size="1" name="rts" id="rts"  onChange="rtsChanged()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>

<tr >
<td >SERIAL XON/XOFF:</td>
<td  colspan="2"><select size="1" name="XON" id="XON"  onChange="XONChanged()">
		<option value="0">Disable</option>
		<option value="1">Enable</option>
	</select>
</td>
</tr>

<tr><td></td>
<td align="center"></td>
<td style="text-align: left;">
<input name="Submit" value="Apply" type="submit"  onClick="commit()">
<input name="Submit" value="Cancel" type="button"  onClick="window.location.reload()">
</td></tr></tbody></table>

</form>


</td></tr></table>
</body></html>
