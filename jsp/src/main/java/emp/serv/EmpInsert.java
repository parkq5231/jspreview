package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpInsert() {
		super();
	}

	// 등록페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		ArrayList<JobVO> jobList = JobDAO.getInstance().selectAll();
		request.setAttribute("deptList", deptList);
		request.setAttribute("jobList", jobList);
		request.getRequestDispatcher("/emp/empInsert.jsp").forward(request, response);

	}

	// 등록 처리 //수정 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파라미터 담기
		String empid = request.getParameter("employee_id");
		
	}
}
