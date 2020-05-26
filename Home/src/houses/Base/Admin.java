package houses.Base;

/**
 * 类名: Admin
 * 描述: 管理员
 */


public class Admin {
	/** 管理员ID*/
	private int adminID;
	/** 管理员姓名*/
	private String admin_name;
	/** 管理员性别*/
	private String admin_sex;
	/** 管理员年龄*/
	private int admin_age;
	/** 管理员电话*/
	private String admin_tel;
	/** 管理员手机*/
	private String admin_phone;
	/** 管理员地址*/
	private String admin_addr;
	/** 管理员描述*/
	private String admin_memo;
	/** 管理员账号外键*/
	private Admin_account admin_account;

	public Admin_account getAdmin_account() {
		return admin_account;
	}

	public void setAdmin_account(Admin_account adminAccount) {
		admin_account = adminAccount;
	}

	public int getAdminID() {
		return adminID;
	}

	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String adminName) {
		admin_name = adminName;
	}

	public String getAdmin_sex() {
		return admin_sex;
	}

	public void setAdmin_sex(String adminSex) {
		admin_sex = adminSex;
	}

	public int getAdmin_age() {
		return admin_age;
	}

	public void setAdmin_age(int adminAge) {
		admin_age = adminAge;
	}

	public String getAdmin_tel() {
		return admin_tel;
	}

	public void setAdmin_tel(String adminTel) {
		admin_tel = adminTel;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String adminPhone) {
		admin_phone = adminPhone;
	}

	public String getAdmin_addr() {
		return admin_addr;
	}

	public void setAdmin_addr(String adminAddr) {
		admin_addr = adminAddr;
	}

	public String getAdmin_memo() {
		return admin_memo;
	}

	public void setAdmin_memo(String adminMemo) {
		admin_memo = adminMemo;
	}

}
