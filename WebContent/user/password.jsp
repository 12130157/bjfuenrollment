<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>修改密码</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table bgcolor="#ffffed" cellSpacing="0" cellPadding="0" width="970" align="center" border="0">
   <tbody>
      <tr>
        <td valign="top" width="40" bgcolor="#fff7e6"><table cellSpacing="0" cellPadding="0" border="0">
       <tbody>
	   <tr>  
		 <td width="50" height="250">  </td>
	   </tr>
          </tbody>
        </table></td>

 <td width="210" valign="top" style="padding:0; margin:0"><table width="50" cellSpacing="0" cellPadding="0" border="0">
          <tbody>
            <tr>
              <td width="181"><table id=_01 cellSpacing="0" cellPadding="0" width="181" border="0">
                  <tbody>
                    
					<tr>
                      <td><img height="160" alt="小小蛋糕" src="../images/left_01.jpg" width="181"></td>
                    </tr>
					
                    <tr>
                      <td width="50" height="58"><a href="../index.jsp?path=1"><img height="58" alt=首页 
                  src="../images/left_03.jpg" width="181" border="0" name="Image25"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="49"><a href="?path=1"><img height="49" alt=蛋糕 
                  src="../images/left_04.jpg"  width="181" border="0" name="Image26"></a></td>
                    </tr>
					
                     <tr>
                      <td width="181" height="62"><a <% if(session.getAttribute("username") == null){%>href="login.jsp"<% }%>><img height="62" alt=登陆 
				  src="../images/left_05.jpg"  width="181" border="0" name="Image27"></a><% if(session.getAttribute("username") == null){%><% }%></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="53"><a <% if(session.getAttribute("username") == null){%>href="register.jsp"<% }%>  href="register.jsp?path=1"><img height="53" alt=注册 
                  src="../images/left_06.jpg"   width="181" border="0" name="Image28"></a><% if(session.getAttribute("username") == null){%><% }%></td>
                    </tr>
					
                    <tr>
                      <td width="181" background=../images/left_07.jpg height="81"><table height="46" cellSpacing="0" cellPadding="0" width="172" border="0">
                          <tbody>
                            <tr>
                              <td width="60" height="50">&nbsp;</td>
                              <td valign="bottom" width="110" ><span class=style1 style="padding-left:1px;">
							  <a class=style1 href="myxiaoxiao.jsp" target=_blank >我的小小</a></span></td>
                            </tr>
                          </tbody>
                        </table></td>
					</tr>
					
                    <tr>
                      <td width="181" background=../images/left_08.jpg height=72><table height="31" width="181">
                          <tbody>
                            <tr>
                              <td width="65" height="70">&nbsp;</td>
                              <td valign="middle" width="110"><span class=style1 style="padding-left:10px;">
							  <a class=style1 href="cart.jsp" target=_blank>购物车</a></span></td>
                            </tr>
                          </tbody>
                        </table></td>
                    </tr>
					
                    <tr>
                <td background="../images/left_09.jpg" height="90" valign="top"><table height="31" width="181">
                          <tbody>
                        <tr>
                              <td width="70" height="32">&nbsp;</td>
                                    <td valign="bottom" width="100"><span class=style1 style="padding-left:20px;">
	  <a class=style1 target=_blank>新品</a></span></td>
                            </tr>
                          </tbody>
                        </table></td>
                    </tr>
					
					 <tr>
                      <td><img height="210"  src="../images/left_10.jpg"  width="181"></td>
                    </tr>
					
					</tbody>
                </table></td>
				
					<td valign="top" width="90"><img height="370" src="../images/left_13.jpg" width="90"></td>
                   </tbody>
                </table></td>

              <td width="680" valign="top"><table width="100%" align="center" cellSpacing="0" cellPadding="0" border="0">
			   
			   <tr>
                 <td><table width="680" cellSpacing="0" cellPadding="0" border="0">
                <tbody>
                  
				  <tr>
                    <td width="680"><table width="680" cellSpacing="0" cellPadding="0" border="0">
                        <tbody>
                          <tr>
                            <td><table height="145" width="490" cellSpacing="0" cellPadding="0" border="0">
                                <tbody>
                                 
								 <tr>
                                    <td><img height="45" src="../images/up_01_01.gif" width="270"></td>
                                    <td><img height="45"  src="../images/up_01_02.gif" width="220"></a></td>
                                  </tr>
                                  
								  <tr>
								    <td><img height="100"  src="../images/up_01_03.gif" width="270"></td>
                                    <td><img height="100"  src="../images/up_01_04.gif" width="220"></td>
                                  </tr>
                                </tbody>
							</table></td>
							
							<td valign="bottom" width="200" background="../images/up_02.gif"><table width="140">
                              </table></td>
                          </tr>
                        </tbody>
                      </table></td>
                  </tr>
                  <tr>
                    <td><table width="680">
                      </table></td>
                  </tr>
                </tbody>
              </table></td>
          </tr>

     <table width="681" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="58" align="left" valign="top">
            <table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="0"></td>
                <td colspan="7"></td>
                <td></td>
              </tr>
              <tr>
                <td height="35" width="10"></td>
                <td background="../images/t4_03.gif" width="89" align="center">
				<div style="padding-top:6px"><a href="myxiaoxiao.jsp" class="word2">我的小小</a></div></td>
                <td width="18">
                </td>
                <td background="../images/t4_041.gif" width="104" align="center">
				<div style="padding-top:6px" ><a href="myorder.jsp" class="word2">我的订单</a></div></td>
                <td width="22"></td>
                <td background="../images/t4_051.gif" width="78" align="center">
				<div style="padding-top:6px"><a href="day.jsp" class="word2">生日纪念日</a></div></td>
                <td width="22"></td>

                <td background="../images/t4_061.gif" width="89" align="center">
				<div style="padding-top:6px"><a href="address.jsp" class="word2">收货地址</a></div></td>
                <td width="25"></td>
                <td background="../images/t4_071.gif" width="95" align="center">
				<div style="padding-top:6px"><a href="information.jsp" class="word2">我的信息</a></div></td>
                <td width="13"></td>
              </tr>
              <tr>
                <td height="11"></td>
                <td colspan="7"></td>
                <td></td>
              </tr>
          </table></td>
        </tr>
        


        <tr>
          <td valign="middle"><table width="681" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top" bgcolor="#FFFFED"><table width="600" height="500" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFED">
                    <tr>
                       <td valign="top">
                       <table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
                       
                    <tr>
                      <td width="18" height="50" align="left" valign="bottom" style="padding-bottom:4px">
					  <img src="../images/jt.gif" width="13" height="13"></td>
                      <td align="left" valign="bottom" class="cu" >修改密码</td>
                    </tr>
                    <tr>
                      <td height="12">&nbsp;</td>
                      <td height="12">&nbsp;</td>
                      </tr>
                    <tr>
                      <td height="153">&nbsp;</td>
                      <td height="153" align="center" valign="top"> 
                        <form id=myform name=myform action="/tscake/customerAccManage.do?method=changePassword" method=post>
                      <table width="450" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="170" height="43" align="right" valign="middle" nowrap="nowrap">旧密码：</td>
                          <td width="280" align="left" valign="middle" background="../images/dgzn_fs_17.gif" 
						  style= "background-repeat:no-repeat;background-position:0px 7px;padding-left:3px}">
						  <input type="password" id="passWord" name="passWord" style="width:9em;border:0;background:transparent;" height="26"/>
                          </td>
                        </tr>
                        <tr>
                          <td height="43" align="right" valign="middle" nowrap="nowrap">请输入新密码：</td>
                          <td align="left" valign="middle" background="../images/dgzn_fs_17.gif" 
						  style= "background-repeat:no-repeat;background-position:0px 7px;padding-left:3px}">
						  <input type="password" id="rePassword1" name="rePassword1" height="26"  style="width:9em;border:0;background:transparent;"/></td>
                        </tr>
                        <tr>
                          <td height="43" align="right" valign="middle" nowrap="nowrap">请再次输入新密码：</td>
                          <td align="left" valign="middle" background="../images/dgzn_fs_17.gif" 
						  style= "background-repeat:no-repeat;background-position:0px 7px;padding-left:3px}">
						  <input type="password" id="rePassword2" name="rePassword2" height="26" style="width:9em;border:0;background:transparent;"/></td>

                        </tr>
                        <tr>
                          <td height="71" colspan="2" align="center" valign="middle" nowrap="nowrap">
                          <span class="btns">      
                           <input id="submit" type="image" width="75" height="19"  src="../images/wdmf-xx_07.gif" onclick="return check_User_PSW()"  />
                          </span>
                          
                          </td>
                          </tr>
                      </table>

                      </form>                      
                      </td>
                    </tr>
                </table></td>
                    </tr>
                </table></td>
                <td width="29" valign="top" >
				</td>
              </tr>
          </table></td>

        </tr>
      </table></td>
    <td width="50" valign="top" bgcolor="#E9D69B"><table border="0" cellspacing="0" cellpadding="0">
     
    </table></td>
  </tr>
</table>




    <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="52" bgcolor="#FFFFFF">&nbsp;</td>
        <td width="182" height="109" align="left" valign="top" background="../images/second/l2.jpg">&nbsp;</td>

        <td width="960" valign="top" bgcolor="#FFFFFF">
		<table width="960" height="100" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
      <tr>
        <td width="747" height="109" background="../images/dgzn_sj_07.gif" bgcolor="#FFFFFF" class="word2" align="center">
		<div style="margin-top:20px"><a href="../html/story/story.jsp" class="word2">品牌故事</a>　|　
		<a href="" class="word2">订购指南</a>　|
		　<a href="" class="word2">产品制作时间</a>　|　
		<a href="" class="word2">免费品尝</a>　|　
		<a href="" class="word2">常见问题</a>　|　
		<a href="" class="word2">销售员专区</a>　|
		　<a href="" class="word2">联系我们</a> <br>

          北京五环内免费送货　订购热线：010-82392974<div  style="display:none">
       
      </div>   
</td>
      </tr>
</table></td>
        <td width="50" height="109" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
    </table>
</body>
</html>