<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link href="../css/style.css" rel="stylesheet"	type="text/css" />
</head>
<body>
<% 
if(session.getAttribute("error") != null) {
	out.println("<span class='error'>" + (String) session.getAttribute("error") + "</span>");	
}
%>
<table cellSpacing="0" cellPadding="0" width="970" align="center" bgcolor="#ffffff" border="0">
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
                      <td width="50" height="58"><a  href="index.jsp?path=1"><img height="58" alt=首页 
                  src="../images/left_03.jpg" width="181" border="0" name="Image25"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="49"><a  href="dangao.jsp"><img height="49" alt=蛋糕 
                  src="../images/left_04.jpg"  width="181" border="0" name="Image26"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="62"><a   href="login.jsp"><img height="62" alt=登陆 
				  src="../images/left_05.jpg"  width="181" border="0" name="Image27"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="53"><a  href="register.jsp"><img height="53" alt=注册 
                  src="../images/left_06.jpg"   width="181" border="0" name="Image28"></a></td>
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
                        </tr>
                              <td width="70" height="32">&nbsp;</td>
                                    <td valign="bottom" width="100"><span class=style1 style="padding-left:20px;">
	  <a class=style1  href="newproduct.jsp" target=_blank>新品</a></span></td>
                            </tr>
                          </tbody>
                        </table></td>
                    </tr>
					
					 <tr>
                      <td><img height="210" alt=享受生活 src="../images/left_10.jpg"  width="181"></td>
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
                                    <td><img height="45" alt="" src="../images/up_01_01.gif" width="270"></td>
                                    <td><img height="45" alt="" src="../images/up_01_02.gif" width="220"></a></td>
                                  </tr>
                                  
								  <tr>
								    <td><img height="100" alt="" src="../images/up_01_03.gif" width="270"></td>
                                    <td><img height="100" alt="" src="../images/up_01_04.gif" width="220"></td>
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
              <td height="58" valign="top" background="../imagest4_00.gif">&nbsp;</td>
            </tr>
            <tr>
              <td valign="middle"><table width="681" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td rowspan="2" align="left" valign="top" bgcolor="#FFFFED">
                      <table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
                        
						<tr>
                          <td width="18" height="50" align="left" valign="bottom" style="padding-bottom:4px">
						  <img src="../images/jt.gif" width="13" height="13"/></td>
                          <td width="612" align="left" valign="bottom" class="cu">登录</td>
                        </tr>
                        
						<tr>
                          <td height="57" colspan="2" align="center" valign="bottom" class="wz">已注册用户请从这里登录</td>
                        </tr>
                        
						<tr>
                          <td height="30" colspan="2" align="left" valign="top" class="wz"></td>
                        </tr>
                        
						<tr>
                          <td height="400" colspan="2" align="left" valign="top" class="wz">
                          <form id="logon" action="login.do"  method="post">
                          <table width="600" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="218" align="right" valign="middle">用户名/手机/邮箱/卡号：</td>
                              <td width="202" height="26" align="left" valign="middle" background="../images/denglu_03.gif" 
							  style= "background-repeat:no-repeat;background-position:0px 0px;padding-left:3px;">
                              	<input type="text" name="email" id="email" width="197" height="26" 
								style="border:0;background:transparent;" tabindex="1"/>
                              </td>
                              <td width="180"><a style="PADDING-LEFT: 10px" href="register.jsp" target="_blank" 
							  class="content_a">立即注册</a></td>
                            </tr>
                            
							<tr>
                              <td height="20" colspan="3"></td>
                            </tr>
                            
							<tr>
                              <td align="right" valign="middle">密码： </td>
                              <td align="left" height="26" valign="middle" background="../images/denglu_03.gif" 
							  style= "background-repeat:no-repeat;background-position:0px 0px;padding-left:3px;">
                              <input type="password" name="password" width="197" height="26" 
							  style="border:0;background:transparent;" tabindex="2"/>
                              </td>
                              <td><a style="PADDING-LEFT: 10px" href="" 
							  target="_blank" class="content_a">找回密码</a></td>
                            </tr>
                            
                            <tr>
                              <td height="40">&nbsp;</td>
                              <td height="40" align="center"><span style="color:red;"></span></td>
                              <td height="40">&nbsp;</td>
                            </tr>
                            
							<tr>
                              <td>&nbsp;</td>
                              <td align="center" valign="middle">
                              	<input type="hidden" id="targetUrl" name="targetUrl" value=""/>
                              	<input name="image" type="image" src="../images/denglu.gif" width="75" height="19" tabindex="3" />
                              </td>
                              <td>&nbsp;</td>
                            </tr>
                            
							<tr>
                              <td height="44">&nbsp;</td>
                              <td align="center" valign="bottom" class="xhx">
                              <a style="PADDING-LEFT: 5px" href="" 
							  target="_blank" class="content_a"></a>
                              </td>
                              <td>&nbsp;</td>
                            </tr>

                          </table></form></td>
                        </tr>
                    </table></td>
                   
				    <td width="29" valign="top">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="215" valign="top" bgcolor="#FFFFED">&nbsp;</td>
                  </tr>
              </table></td>

            </tr>
          </table></td></tr>



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
        <script src="http://s87.cnzz.com/stat.php?id=1652966&web_id=1652966&show=pic1" language="JavaScript" charset="gb2312"></script>
      </div>   
</td>
      </tr>
</table></td>
        <td width="50" height="109" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
    </table>
</body>
</html>