package com.javalec.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.command.Command;
import com.javalec.command.FastSubStep2Command;
import com.javalec.command.MenuListCommand;
import com.javalec.command.SaladListCommand;
import com.javalec.command.SandwichListCommand;
import com.javalec.command.UnitListCommand;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet"); // get방식으로 들어왔을 때 확인
		actionDo(request, response); // actionDo method로 보냄
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost"); // post방식으로 들어왔을 때 확인
		actionDo(request, response); // actionDo method로 보냄
	}
	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		Command command = null;
		String viewPage = null;
		
		String url = request.getRequestURI();
		System.out.println(url); 	   	//  /MVCBoard/list.do 라고 뜸
		String conPath = request.getContextPath();
		System.out.println(conPath);	 //  /MVCBoard 라고 뜸
		String com = url.substring(conPath.length());
		System.out.println(com);		//  /list.do라고 뜸(이걸로 페이지를 판단)

		switch (com) {
		case ("/storeSearch.do"):	// 매장찾기
//			command = new SandwichListCommand();
//			command.execute(request, response);
			viewPage = "storeSearch.jsp";
			break;
		case ("/utilizationSubway.do"):	// 서브웨이 이용방법
//			command = new SandwichListCommand();
//			command.execute(request, response);
			viewPage = "utilizationSubway.jsp";
			break;
		case ("/freshInfo.do"):	// 신선한 재료 소개
//			command = new SandwichListCommand();
//			command.execute(request, response);
			viewPage = "freshInfo.jsp";
			break;
		case ("/sandwich.do"):
			command = new SandwichListCommand();
			command.execute(request, response);
			viewPage = "menuList/sandwich.jsp";
			break;
		case ("/salad.do"):
			command = new SaladListCommand();
			command.execute(request, response);
			viewPage = "menuList/salad.jsp";
			break;
		case ("/unit.do"):
			command = new UnitListCommand();
			command.execute(request, response);
			viewPage = "menuList/unit.jsp";
			break;
		case ("/step2.do"):
			command = new FastSubStep2Command();
			command.execute(request, response);
			viewPage = "step2.jsp";
			break;
		case ("/step3.do"):
			command = new FastSubStep2Command();
			command.execute(request, response);
			viewPage = "step3.jsp";
			break;
		default:
			break;
		}

		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	} // actionDo()

} // End
