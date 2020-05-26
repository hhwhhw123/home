package houses.Action;


import houses.Dao.Custom_account_serviceImpl;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Custom_accountAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware {

	private String custom_oldpsd;
	private String custom_psd;
	private int custom_yezhuID;

	public String getCustom_oldpsd() {
		return custom_oldpsd;
	}

	public void setCustom_oldpsd(String customOldpsd) {
		custom_oldpsd = customOldpsd;
	}

	public int getCustom_yezhuID() {
		return custom_yezhuID;
	}

	public void setCustom_yezhuID(int customYezhuID) {
		custom_yezhuID = customYezhuID;
	}

	public String getCustom_psd() {
		return custom_psd;
	}

	public void setCustom_psd(String customPsd) {
		custom_psd = customPsd;
	}

	private HttpServletRequest request;
	private HttpServletResponse response;

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}

	public void modify_custom_psd() {
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			Custom_account_serviceImpl ca_s = new Custom_account_serviceImpl();
			int t = ca_s.modify_custom_psd(this.custom_yezhuID,
					this.custom_oldpsd, this.custom_psd);
			if (t == 0)
				out.print("旧密码不正确");
			else
				out.print("修改成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
