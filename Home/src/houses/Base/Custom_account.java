package houses.Base;

/**
 * 类名: Custom_account
 * 描述: 住户账号
 */


public class Custom_account {
	
	/** 住户ID */
	private int custom_accountID;
	/** 住户用户名 */
	private String custom_username;
	/** 住户密码 */
	private String custom_password;
	/** 对应的业主 */
	private int custom_yezhuID;
	
	public int getCustom_yezhuID() {
		return custom_yezhuID;
	}
	public void setCustom_yezhuID(int customYezhuID) {
		custom_yezhuID = customYezhuID;
	}
	public int getCustom_accountID() {
		return custom_accountID;
	}
	public void setCustom_accountID(int customAccountID) {
		custom_accountID = customAccountID;
	}
	public String getCustom_username() {
		return custom_username;
	}
	public void setCustom_username(String customUsrname) {
		custom_username = customUsrname;
	}
	public String getCustom_password() {
		return custom_password;
	}
	public void setCustom_password(String customPassword) {
		custom_password = customPassword;
	}
	
	

}
