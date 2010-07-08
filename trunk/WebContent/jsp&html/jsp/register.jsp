<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" rel="stylesheet" />
</head>

<body>
<%=session.getAttribute("user") %>

<table color="#ffffed" cellSpacing="0" cellPadding="0" width="1000" align="center" bgcolor="#ffffff" border="0">
   <tbody>
      <tr>
        <td valign="top" width="50" bgcolor="#fff7e6"><table cellSpacing="0" cellPadding="0" border="0">
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
                      <td width="50" height="58"><a href="index.jsp?path=1"><img height="58" alt=首页 
                  src="../images/left_03.jpg" width="181" border="0" name="Image25"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="49"><a href="dangao.jsp"><img height="49" alt=蛋糕 
                  src="../images/left_04.jpg"  width="181" border="0" name="Image26"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="62"><a href="login.jsp"><img height="62" alt=登陆 
				  src="../images/left_05.jpg"  width="181" border="0" name="Image27"></a></td>
                    </tr>
					
                    <tr>
                      <td width="181" height="53"><a href="register.jsp"><img height="53" alt=注册 
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
                      <td><img height="210" src="../images/left_10.jpg"  width="181"></td>
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
   
          <table width="600" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="58" valign="top" background="..images/t4_00.gif">&nbsp;</td>
            </tr>

            <tr>
              <td valign="middle"><table width="600" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="600" rowspan="2" align="left" valign="top" bgcolor="#FFFFED">
                    
                    <form id="myform" name="myform" action="register"  method="post">
                      <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="18" height="50" align="left" valign="bottom" style="padding-bottom:4px"><img src="../images/jt.gif" width="13" height="13"/></td>
                      <td width="612" align="left" valign="bottom" class="cu">注册</td>

                    </tr>
                    <tr>
                      <td height="57" colspan="2" align="center" valign="bottom" class="wz">新用户在这里注册</td>
                    </tr>
                    <tr>
                      <td height="25" colspan="2" align="left" valign="top" class="wz"></td>
                    </tr>
                    <tr>

                      <td height="400" colspan="2" align="center" valign="top" class="wz"><table width="600" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="207" align="right" valign="middle">请填写您的用户名：</td>
                          <td width="194" height="26" align="left" valign="middle" 
						  background="../images/denglu_03.gif"  style= "background-repeat:no-repeat;   background-position:0px 0px;padding-left:3px;">
                          	<input type="text" name="username" 
							style="border:0;background:transparent;" />
                          </td>
                          <td width="189" align="left">&nbsp;<span style="color:red;">*</span></td>
                        </tr>

                        <tr>
                          <td height="30"></td>
                          <td colspan="2" align="left" class="hjsan" >用户名长度只能在4-20位字符之间</td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle">昵称： </td>
                          <td height="26" width="194" align="left" valign="middle" background="../images/denglu_03.gif" 
						  style= "background-repeat:no-repeat;background-position:0px 0px;padding-left:3px;">
                          <input type="text" name="nickname" width="197" height="26" style="border:0;background:transparent;"/>
                          </td>
                          <td>&nbsp;</td>
                         </tr>
                        
						<tr>
                          <td height="30">&nbsp;</td>
                          <td colspan="2" align="left" class="hjsan" ><span id="nick_td"></span></td>
                        </tr>
                        <tr>
                          <td align="right" valign="middle">请设定密码：</td>
                          <td height="26" align="left" valign="middle" background="../images/denglu_03.gif" 
						  style= "background-repeat:no-repeat;background-position:0px 0px;padding-left:3px;">
                          <input type="password" name="regPassWord" width="197" height="26" 
                          	style="border:0;background:transparent;"/>
                          </td>
                          <td align="left">&nbsp;<span style="color:red;">*</span></td>
                        </tr>
                        <tr>
                          <td height="30">&nbsp;</td>
                          <td align="left" valign="middle" class="wz"><span class="hjsan" id="regPwdSpan">密码请设为6-20位字母或数字 </span></td>

                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="26" align="right" valign="middle">请再次输入设定密码：</td>
                          <td height="26" align="left" valign="middle"  background="../images/denglu_03.gif" 
                          	style="background-repeat:no-repeat;background-position:0px 0px;padding-left:3px;">
                          <input type="password" id="rePassWord" name="rePassWord" width="197" height="26" 
                          	style="border:0;background:transparent;" onblur="Check_RePassWord()"/>
                          </td>
                          <td align="left">&nbsp;<span style="color:red;">*</span></td>

                        </tr>
                        <tr>
                          <td height="30">&nbsp;</td>
                          <td align="left" valign="middle" class="wz"><span class="hjsan" > </span></td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="44">&nbsp;</td>

                          <td align="center" valign="middle" class="xhx">
                          <input name="image" type="image" src="../images/denglu_07.gif" width="75" height="19" /></td>
                          <td>&nbsp;</td>
                        </tr>
                      </table></td>
                    </tr>
                </table>
                </form>
                </td>
                    <td width="10" valign="top">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="215" valign="top" bgcolor="#FFFFFF">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        <td width="50" rowspan="2" valign="top" bgcolor="#FFFFFF"><table border="0" cellspacing="0" cellpadding="0">
    </table></td>
      </tr>
    
    </table>
    <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="52" bgcolor="#FFFFFF">&nbsp;</td>
        <td width="182" height="109" align="left" valign="top" background="../images/second/l2.jpg">&nbsp;</td>

        <td width="990" valign="top" bgcolor="#FFFFFF"><table width="990" height="100" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
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