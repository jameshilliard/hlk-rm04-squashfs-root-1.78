<html>

<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->
<script language="JavaScript" type="text/javascript">
function initValue() {
	var ser2netMode = document.getElementById("ser2netMode");
	var ser2netRemotepro = document.getElementById("ser2netRemotepro");
	var ser2netModeR = "<% ser2netMode(); %>";
	var ser2netRemoteproR = "<% ser2netRemotepro(); %>";

	ser2netMode.options.selectedIndex = 2;
	ser2netRemotepro.options.selectedIndex = 1;


	if(ser2netModeR == "server"){
		ser2netMode.options.selectedIndex = 0;
	}
	else if(ser2netModeR == "client"){
		ser2netMode.options.selectedIndex = 1;
	}
	else{
		ser2netMode.options.selectedIndex = 2;
	}
	
	if(ser2netRemoteproR == "tcp"){
		ser2netRemotepro.options.selectedIndex = 0;
	}
	else {
		ser2netRemotepro.options.selectedIndex = 1;
	}
}


function commit()
{
	
	var netmode = document.getElementById("netmode");
	var wifi_conf = document.getElementById("wifi_conf");
	var dhcpd = document.getElementById("dhcpd");
	var dhcpd_ip = document.getElementById("dhcpd_ip");
	var dhcpd_dns = document.getElementById("dhcpd_dns");
	var dhcpd_time = document.getElementById("dhcpd_time");
	var dhcpc = document.getElementById("dhcpc");
	var net_ip = document.getElementById("net_ip");
	var net_dns = document.getElementById("net_dns");


	if((netmode.value != "<% ser2netconfig_get("netmode"); %>")
		||(wifi_conf.value != "<% ser2netconfig_get("wifi_conf"); %>")
		||(dhcpd.value != "<% ser2netconfig_get("dhcpd"); %>")
		||(dhcpd_ip.value != "<% ser2netconfig_get("dhcpd_ip"); %>")
		||(dhcpd_dns.value != "<% ser2netconfig_get("dhcpd_dns"); %>")
		||(dhcpd_time.value != "<% ser2netconfig_get("dhcpd_time"); %>")
		||(dhcpc.value != "<% ser2netconfig_get("dhcpc"); %>")
		||(net_ip.value != "<% ser2netconfig_get("net_ip"); %>")
		||(net_dns.value != "<% ser2netconfig_get("net_dns"); %>")
		){
		document.getElementById("ser2netSave").value='0';
		document.getElementById("ser2netNetSave").value='1';
	}
	else{
		document.getElementById("ser2netSave").value='1';
		document.getElementById("ser2netNetSave").value='0';
	}

	
	return true;
}


</script>


<body onLoad="initValue()">
<table class="body"><tr><td>
<h1>HLK-RM04 Serial2Net Settings</h1>
<p></p>
<hr />
<form method="post" name="ser2netconfig" action="/goform/ser2netconfig">
<input name="port" value="1" type="hidden">
<input id="ser2netSave" name="ser2netSave" value="0" type="hidden">
<input id="ser2netNetSave"  name="ser2netNetSave" value="1" type="hidden">
<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tbody>

<tr >
<td >NetMode:</td>
<td  colspan="2"><input maxlength="3" size="3" id="netmode" name="netmode" value=<% ser2netconfig_get("netmode"); %>></td>
</tr>

<tr >
<td >WiFi:</td>
<td  colspan="2"><input maxlength="63" size="63" id="wifi_conf" name="wifi_conf" value=<% ser2netconfig_get("wifi_conf"); %>></td>
</tr>

<tr >
<td >DCHPD Enable:</td>
<td  colspan="2"><input maxlength="3" size="3" id="dhcpd" name="dhcpd" value=<% ser2netconfig_get("dhcpd"); %>></td>
</tr>

<tr >
<td >DCHPD IP:</td>
<td  colspan="2"><input maxlength="63" size="63" id="dhcpd_ip" name="dhcpd_ip" value=<% ser2netconfig_get("dhcpd_ip"); %>></td>
</tr>

<tr >
<td >DCHPD DNS:</td>
<td  colspan="2"><input maxlength="63" size="63" id="dhcpd_dns" name="dhcpd_dns" value=<% ser2netconfig_get("dhcpd_dns"); %>></td>
</tr>

<tr >
<td >DCHPD Time:</td>
<td  colspan="2"><input maxlength="8" size="8" id="dhcpd_time" name="dhcpd_time" value=<% ser2netconfig_get("dhcpd_time"); %>></td>
</tr>

<tr >
<td >DCHPC Enable:</td>
<td  colspan="2"><input maxlength="3" size="3" id="dhcpc" name="dhcpc" value=<% ser2netconfig_get("dhcpc"); %>></td>
</tr>

<tr >
<td >NET IP:</td>
<td  colspan="2"><input maxlength="63" size="63" id="net_ip" name="net_ip" value=<% ser2netconfig_get("net_ip"); %>></td>
</tr>

<tr >
<td >NET DNS:</td>
<td  colspan="2"><input maxlength="63" size="63" id="net_dns" name="net_dns" value=<% ser2netconfig_get("net_dns"); %>></td>
</tr>


<tr>
         <td colspan="3">
           <hr />
         </td>
</tr>

<tr class="gr">
<td width="30%" class="gr"></td>
<td width="30%" class="gl">Current</td>
<td width="40%" class="gl">Updated</td>
</tr>
<tr><td class="gr">Serial Configure: </td>
<td><% ser2netUart(); %></td>
<td><input maxlength="63" size="30" name="ser2netUart" value=<% ser2netUart(); %>>
</td></tr>
<tr><td class="gr">Serial Framing Lenth: </td>
<td><% ser2netPacklen(); %></td>
<td><input maxlength="63" size="30" name="ser2netPacklen" value=<% ser2netPacklen(); %>>
</td></tr>
<tr><td class="gr">Serial Framing Timeout: </td>
<td><% ser2netPacktimeout(); %> 
milliseconds</td>
<td><input maxlength="4" size="6" name="ser2netPacktimeout" value=<% ser2netPacktimeout(); %>>
milliseconds <font size="-1">(&lt; 256, 0 for no timeout)</font><br></td></tr>
<tr><td class="gr">Network Mode: </td>
<td><% ser2netMode(); %></td>
<td><select size="1" name="ser2netMode" id="ser2netMode" ><option value="server">Server</option><option value="client">Client</option><option value="none">None</option></select>
</td></tr>
<tr><td class="gr">Remote Server Domain/IP: </td>
<td><% ser2netRemoteip(); %></td>
<td>
<input maxlength="63" size="30" name="ser2netRemoteip" value=<% ser2netRemoteip(); %>>
</td></tr>
<tr><td class="gr">Locale/Remote Port Number: </td>
<td><% ser2netRemoteport(); %></td>
<td><input maxlength="5" size="6" name="ser2netRemoteport" value=<% ser2netRemoteport(); %>></td></tr>
<tr><td class="gr">Network Protocol: </td>
<td><% ser2netRemotepro(); %></td>
<td><select size="1" name="ser2netRemotepro" id="ser2netRemotepro" ><option value="tcp">TCP</option><option value="udp">UDP</option></select>
</td></tr>

<tr><td class="gr">Network Timeout: </td>
<td><% ser2netTimeout(); %> 
seconds</td>
<td><input maxlength="4" size="6" name="ser2netTimeout" value=<% ser2netTimeout(); %>>
seconds <font size="-1">(&lt; 256, 0 for no timeout)</font><br></td></tr>
<tr>
         <td colspan="3">
           <hr />
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
