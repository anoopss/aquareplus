package com.asp.nireeksh.discovery.web.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.InetAddress;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DiscoveryControllerServlet")
public class DiscoveryControllerServlet extends HttpServlet {
	
	String IPAddress_withoutDot = "";
	  
    public DiscoveryControllerServlet() {
        super();
       
    }

    private static final long serialVersionUID = -2345849637804429094L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		long startIPAddress_number,endIPAddress_number;
		String start = request.getParameter("start");
		String end = "";
		String type = request.getParameter("ip-type");
		
		if(type.equals("range"))
			{
			end = request.getParameter("end");
			}
		PrintWriter out = response.getWriter();
		InetAddress startIPAddress = InetAddress.getByName(start);
		InetAddress endIPAddress = null;
		
		if(type.equals("range"))
		{
			endIPAddress = InetAddress.getByName(end);
		}
		else
		{
			endIPAddress = startIPAddress;
		}
		
		boolean is_reachable = startIPAddress.isReachable(5000);
		StringBuffer parameter_buffer = new StringBuffer();
		parameter_buffer.append("/NireekshWeb/discovery/discovery_results.jsp");
		parameter_buffer.append("?start="+start);
		parameter_buffer.append("&reachable="+is_reachable);
		String responseURL = parameter_buffer.toString();
		
		@SuppressWarnings("deprecation")
		String responseURLEncoded = response.encodeRedirectUrl(responseURL);
		
		response.sendRedirect(responseURLEncoded);
		}
}
