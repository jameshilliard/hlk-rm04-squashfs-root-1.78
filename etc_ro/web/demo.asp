<html>

<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->
<script language="JavaScript" type="text/javascript">

function commit2()
{
	var gpio_value = document.getElementById("gpio_value");

	if('1'==gpio_value.value){
		gpio_value.value='0';
	}
	else{
		gpio_value.value='1';
	}

	document.getElementById("ser2netconfig").submit();
	return true;
}

function get_()
{
	var framea = document.getElementById("framea");
	framea.src="/demo_value.asp"
}

function initValue()
{

	int=self.setInterval(function(){get_()},500);
}


</script>


<body  onLoad="initValue()">
<table class="body"><tr><td>
<h1>DEMO</h1>
<p></p>
<hr />
<tr>
<td>Status:</td>
<td>
<iframe src="/demo_value.asp" name="framea" id="framea"></iframe>
</td></tr>
<form method="post" id="ser2netconfig" name="ser2netconfig" action="/goform/gpio_set_x">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td>Control:</td>
<td>
<input id="gpio_value" name="gpio_value"  value=<% gpio_get_s(); %> type="hidden" ">
<input id="gpio_valuex" name="gpio_valuex"  value=<% gpio_get_s(); %> type="button"  onClick="commit2()">
</td></tr>
</table>
</form>
</td></tr></table>
</body></html>

