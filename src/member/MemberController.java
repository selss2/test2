/*package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Seperator;

@WebServlet({
		"/member/main.do",
		"/member/detail.do",
		"/member/regist.do",
		"/member/update.do",
		"/member/delete.do",
		"/member/login.do",
		"/member/logout.do",
		"/member/find_by.do",
		"/member/count.do",
		"/member/list.do",
		"/member/find_by_id.do",
		})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String directory, view;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("커맨드 방식으로 전환하는 과정...");
		Seperator.init(request,response);
		MemberService service = MemberServiceImpl.getInstance();
			switch (Seperator.command.getAction()) {
			case "main": this.dispatch(request, response, 
					Seperator.command.getDirectory()
					+"/" Seperator.command.getAction());
			case "login":
				String name = service.login(this.init(request));
				request.setAttribute("result", name);
				if (!name.equals("")) {
					this.directory = "global";
					this.view = "main";
				}
				break;
			case "regist":
				MemberBean mem = new MemberBean();
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				name = request.getParameter("name");
				String ssn = request.getParameter("ssn");
				String major = request.getParameter("major");
				String subject = request.getParameter("subject");
				service.regist(mem);
				request.setAttribute("result", mem);
				this.directory = "member";
				this.view = "regist";
				break;
			default:
				break;
			}
			try {
				this.dispatch(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	public MemberBean init(HttpServletRequest request) throws SecurityException {
		String sPath = request.getServletPath();
		String[] arr = sPath.split("/");
		this.directory = arr[1];
		this.view = arr[2].substring(0, arr[2].indexOf("."));
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberBean m = new MemberBean();
		System.out.println("ID : " + id + " PW : " + pw);
		m.setId(id);
		m.setPw(pw);
		return m;
	}

	public void dispatch(HttpServletRequest request, HttpServletResponse response, String page) throws Exception {
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/" + this.directory + "/" + this.view + ".jsp");
		dis.forward(request, response);
	}
}*/