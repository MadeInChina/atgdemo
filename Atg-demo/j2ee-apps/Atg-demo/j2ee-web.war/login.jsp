<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 
<%@ taglib uri="/dspTaglib" prefix="dsp"%>
<%@ page isELIgnored="false" %>
<dsp:importbean bean="/atg/userprofiling/ProfileFormHandler" />
<dsp:importbean bean="/atg/dynamo/droplet/ErrorMessageForEach"/>
<dsp:importbean bean="/com/hrw/atg/demo/handler/ToRegisterHandler" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>User Login Page</title>
</head>
 
<body>
<dsp:page>
    <dsp:form id="loginForm" method="post" action="login.jsp">
            <div>
                <div>Login Page</div>
                <br/>
                <table>
                    <tbody>
                        <tr>
                            <td>Username *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.login" maxlength="30" size="25" type="text" required="true"  /></td>
                        </tr>
 
                        <tr>
                            <td>Password *</td>
                            <td><dsp:input bean="ProfileFormHandler.value.password" maxlength="30" size="25" type="password" required="true"  /></td>
                        </tr>
 
                        <td colspan="2">
                                <dsp:input bean="ProfileFormHandler.login" type="submit" value="Log In" />
                                <dsp:input bean="ProfileFormHandler.create" type="submit" value="Register" />
                               <dsp:input bean="ToRegisterHandler.ToRegister" type="submit" value="ToRegister" />
                               
                               <dsp:input bean="ToRegisterHandler.toRegisterErrorUrl" type="hidden" value="${pageContext.request.contextPath}/formhandler/register.jsp" />
                               <dsp:input bean="ToRegisterHandler.toRegisterSuccessUrl" type="hidden" value="${pageContext.request.contextPath}/formhandler/register.jsp" />
                               
                                <dsp:input bean="ProfileFormHandler.loginSuccessURL" type="hidden" value="loginSuccess.jsp" />
                                <dsp:input bean="ProfileFormHandler.loginErrorURL" type="hidden" value="loginError.jsp"/> 
                        </td>
                        </tr>
 
                         <tr>
                            <td colspan="2">
                                <ul>
                                    <dsp:droplet name="ErrorMessageForEach">
                                        <dsp:param bean="ProfileFormHandler.formExceptions" name="exceptions"/>
                                        <dsp:oparam name="output">
                                            <li>
                                                <dsp:valueof param="message"/>
                                            </li>
                                        </dsp:oparam>
                                    </dsp:droplet>
                                </ul>
                            </td>
                          </tr>
 
                    </tbody>
                </table>
            </div>
        </dsp:form>
        </dsp:page>
    </body>
</html>