package houses.Action;


import houses.Base.Ts;
import houses.Dao.TsServiceImpl;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class TsAction extends ActionSupport implements ServletRequestAware, ServletResponseAware  {
	private int ts_count;
	private int current_page;
	private static int firstResult;
	private int tsID;
	private String tsyhm;
	private Date tsrq;
	private String tsnr;
	private String ts_status;
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		// TODO Auto-generated method stub
		response = arg0;
	}
	public int getCurrent_page() {
		return current_page;
	}

	public void setCurrent_page(int currentPage) {
		current_page = currentPage;
	}

	public int getTs_count() {
		return ts_count;
	}

	public void setTs_count(int tsCount) {
		ts_count = tsCount;
	}

	public int getTsID() {
		return tsID;
	}

	public void setTsID(int tsID) {
		this.tsID = tsID;
	}

	public String getTsyhm() {
		return tsyhm;
	}

	public void setTsyhm(String tsyhm) {
		this.tsyhm = tsyhm;
	}

	public Date getTsrq() {
		return tsrq;
	}

	public void setTsrq(Date tsrq) {
		this.tsrq = tsrq;
	}

	public String getTsnr() {
		return tsnr;
	}

	public void setTsnr(String tsnr) {
		this.tsnr = tsnr;
	}

	public String getTs_status() {
		return ts_status;
	}

	public void setTs_status(String tsStatus) {
		ts_status = tsStatus;
	}

	public String List_ts() {
		TsServiceImpl impl = new TsServiceImpl();
		int count = impl.ts_count();
		this.ts_count = count;

		if (request.getParameter("p") == null
				|| request.getParameter("p").equals("first")) {
			firstResult = 0;
			List<Ts> ts = impl.List_ts(firstResult, 8);
			HttpServletRequest req = ServletActionContext.getRequest();
			req.setAttribute("ts", ts);
			this.current_page = 1;
			return "success";
		}

		if (request.getParameter("p").equals("next")) {
			if (firstResult == count - count % 8)
				firstResult = count - count % 8;
			// 如果是尾页，则firstResult不自加
			else
				firstResult = firstResult + 8;
			List<Ts> ts = impl.List_ts(firstResult, 8);
			HttpServletRequest req = ServletActionContext.getRequest();
			req.setAttribute("ts", ts);
			// System.out.println(request.getRequestURL());

			this.current_page = firstResult / 8 + 1;

			return "success";
		}

		if (request.getParameter("p").equals("prior")) {
			if (firstResult == 0)
				firstResult = 0;// 如果是首页，不改变
			else
				firstResult = firstResult - 8;
			List<Ts> ts = impl.List_ts(firstResult, 8);
			HttpServletRequest req = ServletActionContext.getRequest();
			req.setAttribute("ts", ts);
			// System.out.println(request.getRequestURL());
			this.current_page = firstResult / 8 + 1;
			return "success";
		}

		if (request.getParameter("p").equals("last")) {
			firstResult = count - count % 8;
			List<Ts> ts = impl.List_ts(firstResult, 8);
			HttpServletRequest req = ServletActionContext.getRequest();
			req.setAttribute("ts", ts);
			// System.out.println(request.getRequestURL());
			this.current_page = firstResult / 8 + 1;
			return "success";
		}
		return null;
	}

	public void add_ts() {
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			TsServiceImpl impl = new TsServiceImpl();
			Date today = new Date();
			HttpSession session = request.getSession();
			impl.Add_ts((String) session
					.getAttribute("yezhu_number"), today, tsnr, ts_status);
			out.print("登记成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String detail_ts() {
		TsServiceImpl impl = new TsServiceImpl();
		System.out.println(request.getParameter("p"));
		List<Ts> ts = impl.getTs(Integer
				.parseInt(request.getParameter("p")));

		HttpServletRequest req = ServletActionContext.getRequest();
		req.setAttribute("ts", ts);

		return "success";
	}

	public String yezhu_maitain() {
		TsServiceImpl impl = new TsServiceImpl();
		HttpSession session = request.getSession();
		List<Ts> ts = impl.yezhu_ts((String) session
				.getAttribute("yezhu_number"));
		HttpServletRequest req = ServletActionContext.getRequest();
		req.setAttribute("ts", ts);
		return "success";
	}

	public void delete_maintain()
	{
		try{
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			TsServiceImpl impl = new TsServiceImpl();
			impl.delete_ts(Integer.parseInt(request.getParameter("p")));
			out.print("删除成功");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
