package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.Separator;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===MemberController===");
		Separator.init(request,response);
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean mem = new MemberBean();

		switch (Separator.command.getAction()){
		case "login":
			mem.setId(request.getParameter("id"));
			mem.setPw(request.getParameter("pw"));
			String name = service.login(mem);
			if (name.equals("")) {
				Separator.command.setPage("login");
				Separator.command.setView();
			} else {
				Separator.command.setDirectory(request.getParameter("directory"));
				mem.setName(name);
				request.setAttribute("abc", mem);
			}
			break;
		case "regist":
			mem.setId(request.getParameter("id"));
			mem.setPw(request.getParameter("pw"));
			mem.setName(request.getParameter("name"));
			mem.setEmail(request.getParameter("email"));
			mem.setSsn(request.getParameter("ssn"));
			mem.setRegDate();
			String reg = service.regist(mem);
			System.out.println("reg : "+reg);
			
				if (reg.equals("")) {
					Separator.command.setPage("regist");
					Separator.command.setView();
				} else {
					Separator.command.setPage("login");
					Separator.command.setView();
				}
			break;
		case "detail": 
			Separator.command.setView();
			break;	

		case "update": 
			mem.setPw(request.getParameter("pw"));
			mem.setEmail(request.getParameter("email"));
			service.update(mem);
			break;	
		case "delete": break;	
		case "logout": break;	
		case "count": break;	
// ---------------------------------------- //
		case "list": break;	
		case "find_by": break;	
			
		default:
			break;
		}
		DispatcherServlet.send(request, response, Separator.command);
	}
	}

