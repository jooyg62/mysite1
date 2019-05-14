package com.cafe24.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebUtil {
	/**
	 * 해당 URL로 이동
	 * @param request
	 * @param response
	 * @param url
	 * @throws IOException
	 */
	public static void redirect(
			HttpServletRequest request,
			HttpServletResponse response,
			String url) throws IOException {
		response.sendRedirect(url);
		
	}
	
	/**
	 * jsp 에게 전달
	 * @param request
	 * @param response
	 * @param location
	 * @throws IOException
	 * @throws ServletException
	 */
	public static void forward(
			HttpServletRequest request,
			HttpServletResponse response,
			String location) throws IOException, ServletException {
		
		RequestDispatcher rd = request.getRequestDispatcher(location);
		rd.forward(request, response);
		
	}
}
