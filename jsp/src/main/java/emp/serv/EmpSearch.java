package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.EmpDAO;
import emp.dao.EmpVO;

public class EmpSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpSearch() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//parameter
		String id = request.getParameter("managerId");
		// to do
		EmpDAO dao = new EmpDAO();
		EmpVO empVO = dao.selectOne(id);
		request.setAttribute("empVO", empVO);
		System.out.println(empVO);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
