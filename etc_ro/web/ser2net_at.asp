<html>

<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->
<script language="JavaScript" type="text/javascript">


function commit()
{
}


function Query_All2()
{

}

function initValue()
{
	document.getElementById("ser2netconfig").submit();
}

</script>


<body onLoad="initValue()">

<table width="100%" class="body"><tr><td>
<h1>AT Commands</h1>
<p></p>
<input name="port" value="1" type="hidden">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tbody>
<form method="post" id="ser2netconfig" name="ser2netconfig" action="/goform/ser2netconfigAT">
<input maxlength="640" size="30" id="default_0_ssid" name="ver" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="remoteip" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="remoteport" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="CLport" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="remotepro" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="timeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="mode" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="uart" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="uartpacklen" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="uartpacktimeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="uartpackintertimeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="escap" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="escap2" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="escap2_time" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="RTS" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="XON_XOFF" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="netmode" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="wifi_conf" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpd" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpd_ip" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpd_dns" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpd_time" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpd" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="dhcpc" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="net_ip" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="net_dns" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="net_wanip" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="tcp_auto" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="tcp_client_check" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="Channel" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="S2N_Stat" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="wifi_ConState" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="wifi_Scan" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="StaList" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_uart" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_mode" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_remoteip" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_port" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_CLport" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_protocol" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_timeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_uartpacklen" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_uartpacktimeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_uartpackintertimeout" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_tcp_auto" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_tcp_client_check" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_RTS" type="hidden" value="?">
<input maxlength="640" size="30" id="default_0_ssid" name="C2_XON_XOFF" type="hidden" value="?">

</form>
<tr>
         <td colspan="3">
<textarea width="100%">at+ver=?
</textarea>
         </td>
</tr>

<tr class="gr">
<td width="30%" class="gr"></td>
<td width="30%" class="gl"></td>
<td width="40%" class="gl"></td>
</tr>

<tr><td></td>
<td align="center"></td>
<td style="text-align: left;">
<input name="Submit" value="Query All" type="button"  onClick="Query_All()">
<input name="Submit" value="Commit" type="button"  onClick="commit()">
</td></tr></tbody>

</table>



</td></tr></table>
</body></html>
