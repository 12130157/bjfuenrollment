<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>纪念日</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<table color="#ffffed" cellSpacing="0" cellPadding="0" width="970" align="center" bgcolor="#ffffff" border="0">
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
                              <td valign="bottom" width="110" ><span class=style1 STYLE2 style="padding-left:1px;">
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
				<div style="padding-top:6px" ><a href="order.jsp" class="word2">我的订单</a></div></td>
                <td width="22"></td>
                <td background="../images/t4_051.gif" width="78" align="center">
				<div style="padding-top:6px"><a href="address.jsp" class="word2">收货地址</a></div></td>
                <td width="22"></td>

                <td background="../images/t4_061.gif" width="89" align="center">
				<div style="padding-top:6px"><a href="information.jsp" class="word2">我的信息</a></div></td>
                <td width="25"></td>
                <td background="../images/t4_071.gif" width="95" align="center">
				<div style="padding-top:6px"><a href="password.jsp" class="word2">修改密码</a></div></td>
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
          <td valign="middle"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="400 " valign="top" bgcolor="#FFFFED"><table width="652" height="400" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFED">
                    <tr>
                       <td valign="top"><table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="18" height="50" align="left" valign="bottom" style="padding-bottom:4px">
					  <img src="../images/jt.gif" width="13" height="13"></td>
                      <td width="582" align="left" valign="bottom" class="cu">生日纪念日</td>

                    </tr>
					 <tr>
                      <td height="80" width="10">&nbsp;</td>
                 
                      <td width="10" align="left">
					  <input id="btnAdd" type="image" width="75" height="19" src="../images/wdmf-jsb_03.gif"  onclick="addClick()"/></td>

                    </tr>

                    <tr>
                      <td height="12" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="13">&nbsp;</td>
                      <td height="13"><img src="../images/gwc_03.gif" alt="" width="595" height="6" /></td>
                    </tr>
                    <tr>

                      <td height="25">&nbsp;</td>
                      <td height="25"><table width="600" border="0" cellspacing="0" cellpadding="0">
                       <tr>

                          <td width="69" height="35" align="center" valign="middle" nowrap>亲朋昵称</td>
                          <td width="89" height="35" align="center" valign="middle" nowrap>与我的关系</td>
                          <td width="46" height="35" align="center" valign="middle" nowrap>性别</td>
                          <td width="84" height="35" align="center" valign="middle" nowrap>纪念日名称</td>
                          <td width="80" height="35" align="center" valign="middle" nowrap>纪念日</td>
                          <td width="92" height="35" align="center" valign="middle" nowrap>联系方式</td>

                          <td width="143" height="35" align="center" valign="middle" nowrap>操作</td>
                        </tr>

                        <tr>
                          <td colspan="7" nowrap="nowrap">
						  <img src="../images/gwc_06.gif" width="583" height="1" /></td>
                        </tr>                        
                         
			  <tr align="center">
   			    <td height="40" colspan="7" valign="middle">

				  <center>
				    <span class="no_result">没有查询到信息！</span>
				  </center>
			   	</td>
			  </tr>
              <tr>
                <td colspan="7" nowrap="nowrap">
				<img src="../images/gwc_06.gif" width="583" height="1" /></td>
                </tr>   
                        <tr>
                          <td colspan="7" align="center" valign="middle" nowrap>&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="17" colspan="7">
						  <img src="../images/gwc_03.gif" alt="" width="595" height="6" /></td>
                        </tr>
                         <tr>
                          <td  colspan="7" align="right" valign="bottom" height="28" class="zi">
                             
                          </td>
                        </tr>

                       </table>
                      </td>
                    </tr>
                </table></td>
                    </tr>
                </table></td>

              </tr>
              <tr>
                <td height="215" valign="top" bgcolor="#FFFFFF"><img src="../images/dgzn_sj_04.gif" width="28" height="215"></td>
              </tr>
          </table>
          </td>
        </tr>
      </table></td>

    <td width="50" rowspan="2" valign="top" bgcolor="#FFFFFF"><table border="0" cellspacing="0" cellpadding="0">
      
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

          北京五环内免费送货　订购热线：010-82392974</div><div  style="display:none">
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