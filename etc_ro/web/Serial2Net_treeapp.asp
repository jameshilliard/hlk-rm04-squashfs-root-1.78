<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

<!-- !!! Dont forget to modify   INIC mode treeapp.asp !!! -->

<head>
<title>DTree</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link rel="stylesheet" href="/dtree/dtree.css" type="text/css" />
<link rel="StyleSheet" href="dtree.css" type="text/css" />
<script type="text/javascript" src="/dtree/dtree.js"></script>
<script type="text/javascript" src="/lang/b28n.js"></script>
</head>

<body bgcolor=#314977 onLoad="initValue()">
<script language="JavaScript">    
var isMenuLock = 0;
Butterlate.setTextDomain("main");

function initValue()
{
	var e ;
	
}

function setLockMenu(flag){
	isMenuLock = flag;
}
function go(zz) {
	if(!isMenuLock)
		top.view.location=zz;
}
function refresh(){
	window.location.reload(false);
}
function setLanguageEnglish()
{
	document.Lang.langSelection.value = 'en';
	document.cookie="language=en; path=/";
	parent.menu.location.reload();
	parent.view.location.reload();
	window.location.reload();
	return true;
}

function setLanguageSimChinese()
{
	document.Lang.langSelection.value = 'zhcn';
	document.cookie="language=zhcn; path=/";
	parent.view.location.reload();
	parent.menu.location.reload();
	window.location.reload();
	return true;
}

function setLanguageTraChinese()
{
	document.Lang.langSelection.value = 'zhtw';
	document.cookie="language=zhtw; path=/";
	parent.view.location.reload();
	parent.menu.location.reload();
	window.location.reload();
	return true;
}
</script>
<form method="post" name="Lang" action="/goform/setSysLang">
 &nbsp;&nbsp;<input type="image" style="{width:54px;}" src="graphics/en.gif" onClick="return setLanguageEnglish()">&nbsp;
             &nbsp;
	     <input type="image" style="{width:54px;}" src="graphics/zhcn.gif" onClick="return setLanguageSimChinese()">
	     <input type=hidden name=langSelection value="3">
<br/>
<p> 
</p>
</form>
<script type="text/javascript">
var opmode = '<% getCfgZero(1, "OperationMode"); %>';
var dhcpen = '<% getCfgZero(1, "dhcpEnabled"); %>';
var dpbsta = '<% getDpbSta(); %>';
var vpnen = '<% getVPNBuilt(); %>';
var ethconv = '<% getCfgZero(1, "ethConvert"); %>';
var meshb = '<% getMeshBuilt(); %>';
var wdsb = '<% getWDSBuilt(); %>';
var wscb = '<% getWSCBuilt(); %>';
var usbb = '<% getUSBBuilt(); %>';
var storageb = '<% getStorageBuilt(); %>';
var ftpb = '<% getFtpBuilt(); %>';
var smbb = '<% getSmbBuilt(); %>';
var mediab = '<% getMediaBuilt(); %>';
var webcamb = '<% getWebCamBuilt(); %>';
var printersrvb = '<% getPrinterSrvBuilt(); %>';
var itunesb = '<% getiTunesBuilt(); %>';
var syslogb = '<% getSysLogBuilt(); %>';
var swqos = '<% getSWQoSBuilt(); %>';
var ad = '<% isAntennaDiversityBuilt(); %>';
var wizardb = '<% getWizardBuilt(); %>';
var ipv6b = '<% getIPv6Built(); %>';

a = new dTree('a');
a.config.useStatusText=true;
a.config.useCookies=false;


	var cook = "en";

	if (document.cookie.length > 0) {
		var s = document.cookie.indexOf("language=");
		var e = document.cookie.indexOf(";", s);
		if (s != -1) {
			if (e == -1)
				cook = document.cookie.substring(s+9);
			else
				cook = document.cookie.substring(s+9, e);
		}
	}
	
if(cook == "zhcn"){

//  nodeID, parent nodeID,  Name,  URL
a.add(000,  -1, _("treeapp ralink"),                "javascript:go('ser2net_cn.asp');");
a.add(200,   0, _("treeapp Serial2Net Settings"),        "javascript:go('ser2net_cn.asp');");
a.add(201,   0, _("treeapp Advance Settings"),        "javascript:go('Serial2Net_adv_cn.asp');");
a.add(204,   0, _("treeapp Serial2Net UART 2 Settings"),        "javascript:go('ser2net_com2_cn.asp');");
}
else{
//  nodeID, parent nodeID,  Name,  URL
a.add(000,  -1, _("treeapp ralink"),                "javascript:go('ser2net.asp');");
a.add(200,   0, _("Serial2Net Settings"),        "javascript:go('ser2net.asp');");
a.add(201,   0, _("Advance Settings"),        "javascript:go('Serial2Net_adv.asp');");
a.add(204,   0, _("Serial2Net UART 2 Settings"),        "javascript:go('ser2net_com2.asp');");
}

a.add(900,   0, _("treeapp administration"),        "javascript:a.oo(900);");
a.add(901,   900, _("treeapp management"),            "javascript:go('adm/rm04_management.asp');");
a.add(902,   900, _("treeapp settings management"),            "javascript:go('adm/settings.asp');");
a.add(903,   900, _("treeapp upload firmware"),     "javascript:go('adm/upload_firmware.asp');");
a.add(904,   900, _("treeapp status"),     "javascript:go('adm/status.asp');");
a.add(905,   900, _("treeapp station list"),     "javascript:go('wireless/stainfo.asp');");
a.add(906,   900, _("treeapp link status"),     "javascript:go('station/link_status.asp');");

document.write(a);
</script>

</body>

</html>
