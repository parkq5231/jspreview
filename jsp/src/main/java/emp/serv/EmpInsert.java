package emp.serv;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
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
		// http://localhost/jsp/ 마지막 /를 의미함
		request.getRequestDispatcher("/emp/empInsert.jsp")//
				.forward(request, response);
	}

	// 등록 처리 //수정 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파라미터 담기
		String hire_date = request.getParameter("hire_date");

		// builder 객체 생성과 초기화
//		EmpVO vo = EmpVO.builder().commission_pct(request.getParameter("commission_pct"))
//				.employee_id(request.getParameter("employee_id"))
//				.last_name(request.getParameter("last_name"))
//				.email(request.getParameter("email"))
//				.job_id(request.getParameter("job_id"))
//				.hire_date(DateUtil.toDate(hire_date))	//java.sql.Date로 변환시켜야함
//				.build();
//		EmpDAO.getInstance().insert(vo);
		//request.getRequestDispatcher("EmpList").forward(request, response);
		response.sendRedirect("EmpList");
	}
}
