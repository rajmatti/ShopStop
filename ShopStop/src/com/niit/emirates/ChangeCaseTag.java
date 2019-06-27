package com.niit.emirates;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.BodyContent;



public class ChangeCaseTag extends BodyTagSupport{
	private String mCase;
	
	public void setCase(String pCase)
	{
		mCase=pCase;
	}
 
	public int doAfterBody() throws JspException
	{
		try
		{
			BodyContent bc=getBodyContent();
			String body=bc.getString();
			JspWriter out=bc.getEnclosingWriter();
			
			if(body !=null) {
				if("upper".equalsIgnoreCase(mCase)) {
					out.print(body.toUpperCase());
				}
				else {
					out.print(body.toLowerCase());
				}
			}
		}
			catch(IOException e)
			{
				throw new JspException("Error: "+e.getMessage());
			}
			return SKIP_BODY; //will not evaluate the body content of the tag
		}
	}


