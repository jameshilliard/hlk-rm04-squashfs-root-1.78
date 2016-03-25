<html>

<link rel="stylesheet" href="/style/normal_ws.css" type="text/css">
<!-- Copyright (c) Shenzhen Hi-Link Electronic Inc. All Rights Reserved. -->
<script type="text/javascript" src="/lang/b28n.js"></script>
<script language="JavaScript" type="text/javascript">

//function get_lang_hlk(){var lang = "<% getCfgGeneral(1, "Language"); %>";if(lang==''){lang='zhcn';}return lang;} Butterlate.setTextDomain("HLK_RM04");

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

function NetModeChanged() {
	
	var netmode = document.getElementById("netmode_");



		document.getElementById("default_0_div").style.visibility = "hidden";
		document.getElementById("default_0_div").style.display = "none";
		document.getElementById("eth_1_div").style.visibility = "hidden";
		document.getElementById("eth_1_div").style.display = "none";
		document.getElementById("wifi_2_div").style.visibility = "hidden";
		document.getElementById("wifi_2_div").style.display = "none";
		document.getElementById("wifi_3_div").style.visibility = "hidden";
		document.getElementById("wifi_3_div").style.display = "none";


	
	if(1 == netmode.options.selectedIndex){
		document.getElementById("eth_1_div").style.visibility = "visible";
		document.getElementById("eth_1_div").style.display = style_display_on();
	}
	else if(2 == netmode.options.selectedIndex){
		document.getElementById("wifi_2_div").style.visibility = "visible";
		document.getElementById("wifi_2_div").style.display = style_display_on();
		
	}
	else if(3 == netmode.options.selectedIndex){
		document.getElementById("wifi_3_div").style.visibility = "visible";
		document.getElementById("wifi_3_div").style.display = style_display_on();
		
	}
	else{
		document.getElementById("default_0_div").style.visibility = "visible";
		document.getElementById("default_0_div").style.display = style_display_on();
		
	}
}


function IpModeChanged() {
	
	var ipmode = document.getElementById("ipmode");

	
	if(0 == ipmode.options.selectedIndex){
		document.getElementById("eth_1_static_ip").style.visibility = "visible";
		document.getElementById("eth_1_static_ip").style.display = style_display_on();
		document.getElementById("eth_1_static_mask").style.visibility = "visible";
		document.getElementById("eth_1_static_mask").style.display = style_display_on();
		document.getElementById("eth_1_static_gw").style.visibility = "visible";
		document.getElementById("eth_1_static_gw").style.display = style_display_on();
		document.getElementById("eth_1_static_pdns").style.visibility = "visible";
		document.getElementById("eth_1_static_pdns").style.display = style_display_on();
		document.getElementById("eth_1_static_sdns").style.visibility = "visible";
		document.getElementById("eth_1_static_sdns").style.display = style_display_on();

	}
	else if(1 == ipmode.options.selectedIndex){
		
		document.getElementById("eth_1_static_ip").style.visibility = "hidden";
		document.getElementById("eth_1_static_ip").style.display = "none";
		document.getElementById("eth_1_static_mask").style.visibility = "hidden";
		document.getElementById("eth_1_static_mask").style.display = "none";
		document.getElementById("eth_1_static_gw").style.visibility = "hidden";
		document.getElementById("eth_1_static_gw").style.display = "none";
		document.getElementById("eth_1_static_pdns").style.visibility = "hidden";
		document.getElementById("eth_1_static_pdns").style.display = "none";
		document.getElementById("eth_1_static_sdns").style.visibility = "hidden";
		document.getElementById("eth_1_static_sdns").style.display = "none";
	}
}



function wifi_2_encChanged() {
	
	var wifi_2_enc = document.getElementById("wifi_2_enc");
	
	if(0 != wifi_2_enc.options.selectedIndex){
		document.getElementById("wifi_2_pass_div").style.visibility = "visible";
		document.getElementById("wifi_2_pass_div").style.display = style_display_on();

	}
	else {
		document.getElementById("wifi_2_pass_div").style.visibility = "hidden";
		document.getElementById("wifi_2_pass_div").style.display = "none";
	}
}

function wifi_2_IpModeChanged() {
	
	var ipmode = document.getElementById("wifi_2_ipmode");

	
	if(0 == ipmode.options.selectedIndex){
		document.getElementById("wifi_2_static_ip").style.visibility = "visible";
		document.getElementById("wifi_2_static_ip").style.display = style_display_on();
		document.getElementById("wifi_2_static_mask").style.visibility = "visible";
		document.getElementById("wifi_2_static_mask").style.display = style_display_on();
		document.getElementById("wifi_2_static_gw").style.visibility = "visible";
		document.getElementById("wifi_2_static_gw").style.display = style_display_on();
		document.getElementById("wifi_2_static_pdns").style.visibility = "visible";
		document.getElementById("wifi_2_static_pdns").style.display = style_display_on();
		document.getElementById("wifi_2_static_sdns").style.visibility = "visible";
		document.getElementById("wifi_2_static_sdns").style.display = style_display_on();

	}
	else if(1 == ipmode.options.selectedIndex){
		document.getElementById("wifi_2_static_ip").style.visibility = "hidden";
		document.getElementById("wifi_2_static_ip").style.display = "none";
		document.getElementById("wifi_2_static_mask").style.visibility = "hidden";
		document.getElementById("wifi_2_static_mask").style.display = "none";
		document.getElementById("wifi_2_static_gw").style.visibility = "hidden";
		document.getElementById("wifi_2_static_gw").style.display = "none";
		document.getElementById("wifi_2_static_pdns").style.visibility = "hidden";
		document.getElementById("wifi_2_static_pdns").style.display = "none";
		document.getElementById("wifi_2_static_sdns").style.visibility = "hidden";
		document.getElementById("wifi_2_static_sdns").style.display = "none";
		
	}
}



function wifi_3_encChanged() {
	
	var wifi_3_enc = document.getElementById("wifi_3_enc");
	
	if(0 != wifi_3_enc.options.selectedIndex){
		document.getElementById("wifi_3_pass_div").style.visibility = "visible";
		document.getElementById("wifi_3_pass_div").style.display = style_display_on();

	}
	else {
		document.getElementById("wifi_3_pass_div").style.visibility = "hidden";
		document.getElementById("wifi_3_pass_div").style.display = "none";
	}
}

function wifi_3_IpModeChanged() {
	
	var ipmode = document.getElementById("wifi_3_ipmode");

	
	if(0 == ipmode.options.selectedIndex){
		document.getElementById("wifi_3_static_ip").style.visibility = "visible";
		document.getElementById("wifi_3_static_ip").style.display = style_display_on();
		document.getElementById("wifi_3_static_mask").style.visibility = "visible";
		document.getElementById("wifi_3_static_mask").style.display = style_display_on();
		document.getElementById("wifi_3_static_gw").style.visibility = "visible";
		document.getElementById("wifi_3_static_gw").style.display = style_display_on();
		document.getElementById("wifi_3_static_pdns").style.visibility = "visible";
		document.getElementById("wifi_3_static_pdns").style.display = style_display_on();
		document.getElementById("wifi_3_static_sdns").style.visibility = "visible";
		document.getElementById("wifi_3_static_sdns").style.display = style_display_on();

	}
	else if(1 == ipmode.options.selectedIndex){
		document.getElementById("wifi_3_static_ip").style.visibility = "hidden";
		document.getElementById("wifi_3_static_ip").style.display = "none";
		document.getElementById("wifi_3_static_mask").style.visibility = "hidden";
		document.getElementById("wifi_3_static_mask").style.display = "none";
		document.getElementById("wifi_3_static_gw").style.visibility = "hidden";
		document.getElementById("wifi_3_static_gw").style.display = "none";
		document.getElementById("wifi_3_static_pdns").style.visibility = "hidden";
		document.getElementById("wifi_3_static_pdns").style.display = "none";
		document.getElementById("wifi_3_static_sdns").style.visibility = "hidden";
		document.getElementById("wifi_3_static_sdns").style.display = "none";
		
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

function initValue() {
	var ser2netMode = document.getElementById("ser2netMode");
	var ser2netRemotepro = document.getElementById("ser2netRemotepro");
	var ser2netModeR = "<% ser2netMode(); %>";
	var ser2netRemoteproR = "<% ser2netRemotepro(); %>";

//initTranslation();

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



var netmode = "<% ser2netconfig_get("netmode"); %>";
var wifi_conf = "<% ser2netconfig_get("wifi_conf"); %>";
var dhcpd = "<% ser2netconfig_get("dhcpd"); %>";
var dhcpd_ip = "<% ser2netconfig_get("dhcpd_ip"); %>";
var dhcpd_dns = "<% ser2netconfig_get("dhcpd_dns"); %>";
var dhcpd_time = "<% ser2netconfig_get("dhcpd_time"); %>";
var dhcpc = "<% ser2netconfig_get("dhcpc"); %>";
var net_ip = "<% ser2netconfig_get("net_ip"); %>";
var net_dns = "<% ser2netconfig_get("net_dns"); %>";


var wifi_conf_array = wifi_conf.split(",");
var dhcpd_ip_array = dhcpd_ip.split(",");
var dhcpd_dns_array = dhcpd_dns.split(",");
var net_ip_array = net_ip.split(",");
var net_dns_array = net_dns.split(",");


var netmode_web = document.getElementById("netmode_");

if(''  !=GetArgsFromHref(window.location.href, 'enc_type')){
	netmode='2';
}

if('0' == netmode){
	netmode_web.options.selectedIndex = 0;
}
else if('1' == netmode){
	netmode_web.options.selectedIndex = 1;
}
else if('2' == netmode){
	netmode_web.options.selectedIndex = 2;
}
else if('3' == netmode){
	netmode_web.options.selectedIndex = 3;
}
else{
	netmode_web.options.selectedIndex = 0;
}



var ipmode_web = document.getElementById("ipmode");

if('0' == dhcpc){
	ipmode_web.options.selectedIndex = 0;
}
else if('1' == dhcpc){
	ipmode_web.options.selectedIndex = 1;
}
else{
	ipmode_web.options.selectedIndex = 1;
}

document.getElementById("eth_1_net_ip").value  =net_ip_array[0];
document.getElementById("eth_1_net_mask").value  =net_ip_array[1];
document.getElementById("eth_1_net_gw").value  =net_ip_array[2];

document.getElementById("eth_1_net_pdns").value  =net_dns_array[0];
document.getElementById("eth_1_net_sdns").value  =net_dns_array[1];




document.getElementById("wifi_2_ssid").value  =wifi_conf_array[0];

var wifi_2_enc_web = document.getElementById("wifi_2_enc");

if('none' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 0;
}
else if('wep' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 1;
}
else if('wpa_tkip' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 2;
}
else if('wpa_aes' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 3;
}
else if('wpa2_tkip' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 4;
}
else if('wpa2_aes' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 5;
}
else if('wpawpa2_tkip' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 6;
}
else if('wpawpa2_aes' == wifi_conf_array[1]){
	wifi_2_enc_web.options.selectedIndex = 7;
}
else{
	wifi_2_enc_web.options.selectedIndex = 0;
}

if(''  !=GetArgsFromHref(window.location.href, 'enc_type')){
	var ssid =GetArgsFromHref(window.location.href, 'ssid');
	var enc_type =GetArgsFromHref(window.location.href, 'enc_type');

	document.getElementById("wifi_2_ssid").value  =ssid;
	
	if('none' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 0;
	}
	else if('wep' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 1;
	}
	else if('wpa_tkip' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 2;
	}
	else if('wpa_aes' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 3;
	}
	else if('wpa2_tkip' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 4;
	}
	else if('wpa2_aes' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 5;
	}
	else if('wpawpa2_tkip' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 6;
	}
	else if('wpawpa2_aes' == enc_type){
		wifi_2_enc_web.options.selectedIndex = 7;
	}
	else{
		wifi_2_enc_web.options.selectedIndex = 0;
	}

	document.getElementById("wifi_2_pass").focus();
}



document.getElementById("wifi_2_pass").value  =wifi_conf_array[2];


var wifi_2_ipmode_web = document.getElementById("wifi_2_ipmode");

if('0' == dhcpc){
	wifi_2_ipmode_web.options.selectedIndex = 0;
}
else if('1' == dhcpc){
	wifi_2_ipmode_web.options.selectedIndex = 1;
}
else{
	wifi_2_ipmode_web.options.selectedIndex = 1;
}

document.getElementById("wifi_2_net_ip").value  =net_ip_array[0];
document.getElementById("wifi_2_net_mask").value  =net_ip_array[1];
document.getElementById("wifi_2_net_gw").value  =net_ip_array[2];

document.getElementById("wifi_2_net_pdns").value  =net_dns_array[0];
document.getElementById("wifi_2_net_sdns").value  =net_dns_array[1];




document.getElementById("wifi_3_ssid").value  =wifi_conf_array[0];

var wifi_3_enc_web = document.getElementById("wifi_3_enc");

if('none' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 0;
}
else if('wep_open' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 1;
}
else if('wep' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 2;
}
else if('wpa_tkip' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 3;
}
else if('wpa_aes' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 4;
}
else if('wpa2_tkip' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 5;
}
else if('wpa2_aes' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 6;
}
else if('wpawpa2_tkip' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 7;
}
else if('wpawpa2_aes' == wifi_conf_array[1]){
	wifi_3_enc_web.options.selectedIndex = 8;
}
else{
	wifi_3_enc_web.options.selectedIndex = 0;
}

document.getElementById("wifi_3_pass").value  =wifi_conf_array[2];

/*
var wifi_3_ipmode_web = document.getElementById("wifi_3_ipmode");

if('0' == dhcpc){
	wifi_3_ipmode_web.options.selectedIndex = 0;
}
else if('1' == dhcpc){
	wifi_3_ipmode_web.options.selectedIndex = 1;
}
else{
	wifi_3_ipmode_web.options.selectedIndex = 1;
}
*/

document.getElementById("wifi_3_net_ip").value  =net_ip_array[0];
document.getElementById("wifi_3_net_mask").value  =net_ip_array[1];


document.getElementById("default_0_ssid_").value  ="<% getCfgGeneral(1, "SSID1"); %>";
document.getElementById("default_0_pass_").value  ="<% getCfgGeneral(1, "WPAPSK1"); %>";
//document.getElementById("default_0_ip").value  ="<% getCfgGeneral(1, "lan_ipaddr"); %>";

if("<% getCfgGeneral(1, "AuthMode"); %>" == "OPEN"){
		document.getElementById("default_0_pass_div").style.visibility = "hidden";
		document.getElementById("default_0_pass_div").style.display = "none";
}
	
	

NetModeChanged();
IpModeChanged();
wifi_2_encChanged();
wifi_2_IpModeChanged();
wifi_3_encChanged();


ser2netMode_Changed();
	
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


function get_start(ip,mask)
{
	var ip_int=(parseInt(ip.split(".")[0])<<(3*8))
		+(parseInt(ip.split(".")[1])<<(2*8))
		+(parseInt(ip.split(".")[2])<<(1*8))
		+(parseInt(ip.split(".")[3])<<(0*8));
	var mask_int=(parseInt(mask.split(".")[0])<<(3*8))
		+(parseInt(mask.split(".")[1])<<(2*8))
		+(parseInt(mask.split(".")[2])<<(1*8))
		+(parseInt(mask.split(".")[3])<<(0*8));
	var start_int=(ip_int&(mask_int))+1;

	var start=Number(parseInt(ip.split(".")[0])&0xff);
	start +=".";
	start +=Number((start_int>>(2*8))&0xff);
	start +=".";
	start +=Number((start_int>>(1*8))&0xff);
	start +=".";
	start +=Number((start_int>>(0*8))&0xff);

	return start;
}

function mask_x(mask)
{
	mask =~mask;
	var a=(mask>>(24))&0xff;
	var b=(mask>>(16))&0xff;
	var c=(mask>>(8))&0xff;
	var d=(mask>>(0))&0xff;

	if(0xff == a){
		a=0xfe;
	}
	if(0xff == b){
		b=0xfe;
	}
	if(0xff == c){
		c=0xfe;
	}
	if(0xff == d){
		d=0xfe;
	}

	return ((a<<(3*8))+(b<<(2*8))+(c<<(1*8))+(d<<(0*8)));
}

function get_end(ip,mask)
{
	var ip_int=(parseInt(ip.split(".")[0])<<(3*8))
		+(parseInt(ip.split(".")[1])<<(2*8))
		+(parseInt(ip.split(".")[2])<<(1*8))
		+(parseInt(ip.split(".")[3])<<(0*8));
	var mask_int=(parseInt(mask.split(".")[0])<<(3*8))
		+(parseInt(mask.split(".")[1])<<(2*8))
		+(parseInt(mask.split(".")[2])<<(1*8))
		+(parseInt(mask.split(".")[3])<<(0*8));
	var start_int=(ip_int&(mask_int));
	start_int |=mask_x(mask_int);

	var start=Number(parseInt(ip.split(".")[0])&0xff);
	start +=".";
	start +=Number((start_int>>(2*8))&0xff);
	start +=".";
	start +=Number((start_int>>(1*8))&0xff);
	start +=".";
	start +=Number((start_int>>(0*8))&0xff);

	return start;
}


function commit2()
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

	var netmode_ = document.getElementById("netmode_");

	if(0 == netmode_.options.selectedIndex){
		netmode.value  = '0';
	}
	else if(1 == netmode_.options.selectedIndex){
		netmode.value  = '1';

		var ipmode_web = document.getElementById("ipmode");

		if(0 == ipmode_web.options.selectedIndex){
			dhcpc.value  = "0";
			net_ip.value = document.getElementById("eth_1_net_ip").value
				+","
				+document.getElementById("eth_1_net_mask").value
				+","
				+document.getElementById("eth_1_net_gw").value ;
			net_dns.value = document.getElementById("eth_1_net_pdns").value
				+","
				+document.getElementById("eth_1_net_sdns").value;
		}
		else if(1 == ipmode_web.options.selectedIndex){
			dhcpc.value  = "1";
		}
		else{
			dhcpc.value  = "1";
		}
		
	}
	else if(2 == netmode_.options.selectedIndex){
		netmode.value  = 2;
		var wifi_2_enc_web = document.getElementById("wifi_2_enc");
		wifi_conf.value = document.getElementById("wifi_2_ssid").value
			+","
			+wifi_2_enc_web.options[wifi_2_enc_web.options.selectedIndex].value
			+","
			+document.getElementById("wifi_2_pass").value;

		var wifi_2_ipmode_web = document.getElementById("wifi_2_ipmode");

		if(0 == wifi_2_ipmode_web.options.selectedIndex){
			dhcpc.value  = "0";
			net_ip.value = document.getElementById("wifi_2_net_ip").value
				+","
				+document.getElementById("wifi_2_net_mask").value
				+","
				+document.getElementById("wifi_2_net_gw").value ;
			net_dns.value = document.getElementById("wifi_2_net_pdns").value
				+","
				+document.getElementById("wifi_2_net_sdns").value;
		}
		else if(1 == wifi_2_ipmode_web.options.selectedIndex){
			dhcpc.value  = "1";
		}
		else{
			dhcpc.value  = "1";
		}
	}
	else if(3 == netmode_.options.selectedIndex){
		netmode.value  = 3;
		var wifi_3_enc_web = document.getElementById("wifi_3_enc");
		wifi_conf.value = document.getElementById("wifi_3_ssid").value
			+","
			+wifi_3_enc_web.options[wifi_3_enc_web.options.selectedIndex].value
			+","
			+document.getElementById("wifi_3_pass").value;

		net_ip.value = document.getElementById("wifi_3_net_ip").value
			+","
			+document.getElementById("wifi_3_net_mask").value
			+","
			+document.getElementById("wifi_3_net_ip").value ;
		net_dns.value = document.getElementById("wifi_3_net_ip").value
			+","
			+"0.0.0.0";
		
		dhcpd.value = "1";
		dhcpd_ip.value = get_start(document.getElementById("wifi_3_net_ip").value,document.getElementById("wifi_3_net_mask").value)
			+","
			+get_end(document.getElementById("wifi_3_net_ip").value,document.getElementById("wifi_3_net_mask").value)
			+","
			+document.getElementById("wifi_3_net_mask").value
			+","
			+document.getElementById("wifi_3_net_ip").value ;
		dhcpd_dns.value = document.getElementById("wifi_3_net_ip").value
			+","
			+"0.0.0.0";
		dhcpd_time.value = 86400;

		
	}
	else{
		netmode.value  = 0;
	}



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

	if((document.getElementById("default_0_ssid_").value != "<% getCfgGeneral(1, "SSID1"); %>")
		||(document.getElementById("default_0_pass_").value != "<% getCfgGeneral(1, "WPAPSK1"); %>")
		){
		document.getElementById("default_0_ssid").value=document.getElementById("default_0_ssid_").value;
		document.getElementById("default_0_pass").value=document.getElementById("default_0_pass_").value;
		document.getElementById("ser2netSave").value='0';
		document.getElementById("ser2netNetSave").value='1';
	}
	else{
		document.getElementById("default_0_ssid").value="";
		document.getElementById("default_0_pass").value="";
	}

{
	var str='';
	
}


	document.getElementById("ser2netconfig").submit();
	return true;
}


function ser2netMode_Changed() {
	
	var ser2netMode = document.getElementById("ser2netMode");

	
	if(0 == ser2netMode.options.selectedIndex){
		document.getElementById("ser2netRemoteip").disabled = true;
		document.getElementById("ser2netRemoteport").disabled = false;
		document.getElementById("ser2netRemotepro").disabled = false;
		document.getElementById("ser2netTimeout").disabled = false;

	}
	else if(1 == ser2netMode.options.selectedIndex){
		document.getElementById("ser2netRemoteip").disabled = false;
		document.getElementById("ser2netRemoteport").disabled = false;
		document.getElementById("ser2netRemotepro").disabled = false;
		document.getElementById("ser2netTimeout").disabled = false;
		
	}else{
		document.getElementById("ser2netRemoteip").disabled = true;
		document.getElementById("ser2netRemoteport").disabled = true;
		document.getElementById("ser2netRemotepro").disabled = true;
		document.getElementById("ser2netTimeout").disabled = true;
		
	}
}


function initTranslation()
{

}

</script>


<body onLoad="initValue()">
<table class="body"><tr><td>
<h1>串口-网络参数配置</h1>
<p></p>
<hr />
<input name="port" value="1" type="hidden">

<div id="netmode_div">
<table width="100%" border="0" cellpadding="2" cellspacing="2">
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>
<tr >
<td >网络模式:</td>
<td><select size="1" name="netmode_" id="netmode_"  onChange="NetModeChanged()">
		<option value="0">默认</option>
		<option value="1">串口-以太网</option>
		<option value="2">串口-无线(WIFI STA)</option>
		<option value="3">串口-无线(WIFI AP)</option>
	</select>
</td></tr>
</table>
</div>
<div id="default_0_div">
	<table width="100%" border="0" cellpadding="2" cellspacing="2">
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>
	
	<tr  id="default_0_ssid_div">
	<td >无线网络名称:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="default_0_ssid_" name="default_0_ssid_" ></td>
	</tr>
	
	<tr  id="default_0_pass_div">
	<td >密码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="default_0_pass_" name="default_0_pass_" ></td>
	</tr>
	
	
	</table>
</div>
<div id="eth_1_div">
	<table width="100%" border="0" cellpadding="2" cellspacing="2">
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>
	<tr >
	<td >IP地址类型:</td>
	<td   colspan="2"><select size="1" name="ipmode" id="ipmode"  onChange="IpModeChanged()">
			<option value="0">静态</option>
			<option value="1">动态</option>
		</select></td>
	</tr>

	<tr  id="eth_1_static_ip">
	<td >IP地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="eth_1_net_ip" name="eth_1_net_ip" ></td>
	</tr>

	<tr id="eth_1_static_mask">
	<td >子网掩码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="eth_1_net_mask" name="eth_1_net_mask" ></td>
	</tr>
	<tr id="eth_1_static_gw">
	<td >默认网关:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="eth_1_net_gw" name="eth_1_net_gw" ></td>
	</tr>
	<tr id="eth_1_static_pdns">
	<td >首选DNS服务器地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="eth_1_net_pdns" name="eth_1_net_pdns" ></td>
	</tr>
	<tr id="eth_1_static_sdns">
	<td >备用DNS服务器地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="eth_1_net_sdns" name="eth_1_net_sdns" ></td>
	</tr>

	</table>
</div>

<div id="wifi_2_div">
	<table width="100%" border="0" cellpadding="2" cellspacing="2">
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>
	<tr  id="wifi_2_ssid_div">
	<td >无线网络名称:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_ssid" name="wifi_2_ssid" ><input name="Submit" value="扫描" type="button"  onClick='
	window.location.href="./wifi_list1_cn.asp"'></td>
	</tr>

	<tr  id="wifi_2_enc_div">
	<td >认证加密类型:</td>
	<td  colspan="2" ><select size="1" name="wifi_2_enc" id="wifi_2_enc"  onChange="wifi_2_encChanged()">
			<option value="none">OPEN</option>
			<option value="wep">WEP</option>
			<option value="wpa_tkip">WPA TKIP</option>
			<option value="wpa_aes">WPA AES</option>
			<option value="wpa2_tkip">WPA2 TKIP</option>
			<option value="wpa2_aes">WPA2 AES</option>
			<option value="wpawpa2_tkip">WPA/WPA2 TKIP</option>
			<option value="wpawpa2_aes">WPA/WPA2 AES</option>
		</select></td>
	</tr>
	
	<tr  id="wifi_2_pass_div">
	<td >密码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_pass" name="wifi_2_pass" ></td>
	</tr>

	
	<tr >
	<td >IP地址类型:</td>
	<td   colspan="2"><select size="1" name="wifi_2_ipmode" id="wifi_2_ipmode"  onChange="wifi_2_IpModeChanged()">
			<option value="0">静态</option>
			<option value="1">动态</option>
		</select></td>
	</tr>

	<tr  id="wifi_2_static_ip">
	<td >IP地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_net_ip" name="wifi_2_net_ip" ></td>
	</tr>

	<tr id="wifi_2_static_mask">
	<td >子网掩码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_net_mask" name="wifi_2_net_mask" ></td>
	</tr>
	<tr id="wifi_2_static_gw">
	<td >默认网关:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_net_gw" name="wifi_2_net_gw" ></td>
	</tr>
	<tr id="wifi_2_static_pdns">
	<td >首选DNS服务器地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_net_pdns" name="wifi_2_net_pdns" ></td>
	</tr>
	<tr id="wifi_2_static_sdns">
	<td >备用DNS服务器地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_2_net_sdns" name="wifi_2_net_sdns" ></td>
	</tr>

	</table>
</div>

<div id="wifi_3_div">
	<table width="100%" border="0" cellpadding="2" cellspacing="2">
	<tr >
	<td width="30%"></td>
	<td width="30%"></td>
	<td width="40%"></td>
	</tr>
	<tr >
	<td ></td>
	<td ></td>
	<td ></td>
	</tr>
	
	<tr  id="wifi_3_ssid_div">
	<td >无线网络名称:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_3_ssid" name="wifi_3_ssid" ></td>
	</tr>

	<tr  id="wifi_3_enc_div">
	<td >认证加密类型:</td>
	<td  colspan="2" ><select size="1" name="wifi_3_enc" id="wifi_3_enc"  onChange="wifi_3_encChanged()">
			<option value="none">OPEN</option>
			<option value="wep_open">WEP OPEN</option>
			<option value="wep">WEP SHARED</option>
			<option value="wpa_tkip">WPA TKIP</option>
			<option value="wpa_aes">WPA AES</option>
			<option value="wpa2_tkip">WPA2 TKIP</option>
			<option value="wpa2_aes">WPA2 AES</option>
			<option value="wpawpa2_tkip">WPA/WPA2 TKIP</option>
			<option value="wpawpa2_aes">WPA/WPA2 AES</option>
		</select></td>
	</tr>
	
	<tr  id="wifi_3_pass_div">
	<td >密码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_3_pass" name="wifi_3_pass" ></td>
	</tr>


	<tr  id="wifi_3_static_ip">
	<td >IP地址:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_3_net_ip" name="wifi_3_net_ip" ></td>
	</tr>

	<tr id="wifi_3_static_mask">
	<td >子网掩码:</td>
	<td  colspan="2"><input maxlength="63" size="30" id="wifi_3_net_mask" name="wifi_3_net_mask" ></td>
	</tr>
	
	</table>
</div>

<form method="post" id="ser2netconfig" name="ser2netconfig" action="/goform/ser2netconfig2">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tbody>

<input id="ser2netSave" name="ser2netSave" value="0" type="hidden">
<input id="ser2netNetSave"  name="ser2netNetSave" value="1" type="hidden">


<input maxlength="3" size="3" id="netmode" name="netmode" type="hidden" value=<% ser2netconfig_get("netmode"); %>>
<input maxlength="63" size="30" id="wifi_conf" name="wifi_conf" type="hidden" value=<% ser2netconfig_get("wifi_conf"); %>>
<input maxlength="3" size="3" id="dhcpd" name="dhcpd" type="hidden" value=<% ser2netconfig_get("dhcpd"); %>>
<input maxlength="63" size="30" id="dhcpd_ip" name="dhcpd_ip" type="hidden" value=<% ser2netconfig_get("dhcpd_ip"); %>>
<input maxlength="63" size="30" id="dhcpd_dns" name="dhcpd_dns" type="hidden" value=<% ser2netconfig_get("dhcpd_dns"); %>>
<input maxlength="8" size="8" id="dhcpd_time" name="dhcpd_time" type="hidden" value=<% ser2netconfig_get("dhcpd_time"); %>>
<input maxlength="3" size="3" id="dhcpc" name="dhcpc" type="hidden" value=<% ser2netconfig_get("dhcpc"); %>>
<input maxlength="63" size="30" id="net_ip" name="net_ip" type="hidden" value=<% ser2netconfig_get("net_ip"); %>>
<input maxlength="63" size="30" id="net_dns" name="net_dns" type="hidden" value=<% ser2netconfig_get("net_dns"); %>>

<input maxlength="63" size="30" id="default_0_ssid" name="default_0_ssid" type="hidden" value="">
<input maxlength="63" size="30" id="default_0_pass" name="default_0_pass" type="hidden" value="">

<tr>
         <td colspan="3">
           <hr />
         </td>
</tr>

<tr class="gr">
<td width="30%" class="gr"></td>
<td width="30%" class="gl">当前配置</td>
<td width="40%" class="gl">更新配置</td>
</tr>
<tr><td class="gr">串口配置: </td>
<td><% ser2netUart(); %></td>
<td><input maxlength="63" size="30" name="ser2netUart" value=<% ser2netUart(); %>>
</td></tr>
<tr><td class="gr">串口组帧长度: </td>
<td><% ser2netPacklen(); %></td>
<td><input maxlength="63" size="30" name="ser2netPacklen" value=<% ser2netPacklen(); %>>
</td></tr>
<tr><td class="gr">串口组帧周期: </td>
<td><% ser2netPacktimeout(); %> 
毫秒</td>
<td><input maxlength="4" size="6" name="ser2netPacktimeout" value=<% ser2netPacktimeout(); %>>
毫秒 <font size="-1">(&lt; 256, 0-无限长)</font><br></td></tr>
<tr><td class="gr">网络协议模式: </td>
<td><% ser2netMode(); %></td>
<td><select size="1" name="ser2netMode" id="ser2netMode"  onChange="ser2netMode_Changed()"><option value="server">服务器（Server）</option><option value="client">客户端（Client）</option><option value="none">无（None）</option></select>
</td></tr>
<tr><td class="gr">本地/远端 服务器域名/IP: </td>
<td><% ser2netRemoteip(); %></td>
<td>
<input maxlength="63" size="30" name="ser2netRemoteip" id="ser2netRemoteip" value=<% ser2netRemoteip(); %>>
</td></tr>
<tr><td class="gr">本地/远端 端口: </td>
<td><% ser2netRemoteport(); %></td>
<td><input maxlength="5" size="6" name="ser2netRemoteport" id="ser2netRemoteport" value=<% ser2netRemoteport(); %>></td></tr>
<tr><td class="gr">网络协议选择: </td>
<td><% ser2netRemotepro(); %></td>
<td><select size="1" name="ser2netRemotepro" id="ser2netRemotepro" ><option value="tcp">TCP</option><option value="udp">UDP</option></select>
</td></tr>

<tr><td class="gr">TCP网络超时: </td>
<td><% ser2netTimeout(); %> 
秒</td>
<td><input maxlength="4" size="6" name="ser2netTimeout" id="ser2netTimeout" value=<% ser2netTimeout(); %>>
秒 <font size="-1">(&lt; 256, 0-无限长)</font><br></td></tr>
<tr>
         <td colspan="3">
           <hr />
         </td>
</tr>
<tr><td></td>
<td align="center"></td>
<td style="text-align: left;">
<input name="Submit" value="确定" type="button"  onClick="commit2()">
<input name="Submit" value="取消" type="button"  onClick="window.location.reload()">
</td></tr></tbody></table>

</form>


</td></tr></table>
</body></html>
