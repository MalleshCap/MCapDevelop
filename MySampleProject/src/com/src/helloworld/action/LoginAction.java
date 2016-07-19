/**
 * 
 */
package com.mallesh.helloworld.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.mallesh.helloworld.form.LoginForm;
/**
 * @author mbanda
 *
 */
public class LoginAction extends Action  {

	 public ActionForward execute(ActionMapping mapping, ActionForm form,HttpServletRequest request, HttpServletResponse response)throws Exception {
	     
	        String target = null;
	        LoginForm loginForm = (LoginForm)form; 
	             
	        if(loginForm.getUserName().equals("mallesh") && loginForm.getPassword().equals("mallesh")) {
	            target = "success";
	            request.setAttribute("message", loginForm.getUserName());
	        }
	        else {
	            target = "failure";
	        }
	         
	        return mapping.findForward(target);
	    }
	
}
