
package com.hrw.atg.demo.handler;

import java.io.IOException;

import javax.servlet.ServletException;

import atg.droplet.DropletException;
import atg.droplet.GenericFormHandler;
import atg.servlet.DynamoHttpServletRequest;
import atg.servlet.DynamoHttpServletResponse;

public class ToRegisterHandler extends GenericFormHandler {
    private String toRegisterSuccessUrl;

    public String getToRegisterErrorUrl() {
        return toRegisterErrorUrl;
    }

    public void setToRegisterErrorUrl(String toRegisterErrorUrl) {
        this.toRegisterErrorUrl = toRegisterErrorUrl;
    }

    private String toRegisterErrorUrl;

    public String getToRegisterSuccessUrl() {
        return toRegisterSuccessUrl;
    }

    public void setToRegisterSuccessUrl(String toRegisterSuccessUrl) {
        this.toRegisterSuccessUrl = toRegisterSuccessUrl;
    }

    public boolean handleToRegister(DynamoHttpServletRequest pRequest,
            DynamoHttpServletResponse pResponse) throws ServletException, IOException {
//        if (!isValide()) {
//            this.addFormException(new DropletException("11"));
//        }
        return checkFormRedirect(toRegisterSuccessUrl, toRegisterErrorUrl, pRequest, pResponse);
    }

    private boolean isValide() {
        // TODO Auto-generated method stub
        return false;
    }

}
