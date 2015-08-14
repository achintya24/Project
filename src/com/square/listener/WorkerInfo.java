package com.square.listener;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.square.entity.GlobalClass;

/**
 * Servlet implementation class WorkerInfo
 */
public class WorkerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkerInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String str=request.getParameter("worker_id");
		System.out.println(str);
		String[] arr=str.split("-");
		
		if(arr[1].equals("Home Cleaning"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=1;
		String url=response.encodeRedirectURL("plumberfrm.htm");
		response.sendRedirect("plumberfrm.htm");
		}
		if(arr[1].equals("Plumber"))
		{
			GlobalClass.worker_id=Integer.parseInt(arr[0]);
			GlobalClass.category=arr[1];
			GlobalClass.cid=2;
		String url=response.encodeRedirectURL("plumberfrm.htm");
		response.sendRedirect("plumberfrm.htm");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
