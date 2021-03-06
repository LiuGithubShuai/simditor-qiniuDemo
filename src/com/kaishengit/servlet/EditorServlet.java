package com.kaishengit.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qiniu.util.Auth;

@WebServlet("/editor")
public class EditorServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ak = "Nz18RXVC1ZLhbrMCj0nVGT3ScE_9h27-EGmVwiAf";
		String sk = "58VAodtrPhF9667Ajh8FGoDouKsUHGX0VoNTVb0J";
		String bucketName = "rain129";
		
		Auth auth = Auth.create(ak,sk);
		
		String token = auth.uploadToken(bucketName);
		req.setAttribute("token", token);
		
		req.getRequestDispatcher("editor.jsp").forward(req, resp);
	}

}
