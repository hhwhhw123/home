package houses.Base;

/**
 * 类名: Admin_account
 * 描述: 管理员账号
 */


public class Admin_account {
	/** 管理员账户ID */
	private int admin_accountID;
	/** 管理员用户名 */
	private String admin_username;
	/** 管理员密码 */
	private String admin_password;

	public int getAdmin_accountID() {
		return admin_accountID;
	}

	public void setAdmin_accountID(int adminAccountID) {
		admin_accountID = adminAccountID;
	}

	public String getAdmin_username() {
		return admin_username;
	}

	public void setAdmin_username(String adminUsername) {
		admin_username = adminUsername;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String adminPassword) {
		admin_password = adminPassword;
	}

}
