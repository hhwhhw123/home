package houses.Base;

import java.util.Date;

/**
 * 类名: Yezhu
 * 描述: 业主
 */

public class Yezhu {
	
	/** 业主ID */
	private int yezhuID;
	/** 业主门牌号 */
	private String yezhu_homesnumber;
	/** 业主姓名*/
	private String yezhu_name;
	/** 业主性别*/
	private String yezhu_sex;
	/** 业主年龄*/
	private int yezhu_age;
	/** 业主电话*/
	private String yezhu_tel;
	/** 业主手机*/
	private String yezhu_phone;
	/** 业主身份证*/
	private String yezhu_IDC;
	/** 业主家庭成员*/
	private String yezhu_member;
	/** 加入日期 */
	private Date yezhu_date;
	/** 业主描述 */
	private String yezhu_memo;
	/** 账号 */
	private int yezhu_custom_account;
	public int getYezhuID() {
		return yezhuID;
	}
	public void setYezhuID(int yezhuID) {
		this.yezhuID = yezhuID;
	}
	
	public String getYezhu_homesnumber() {
		return yezhu_homesnumber;
	}
	public void setYezhu_homesnumber(String yezhuHomesnumber) {
		yezhu_homesnumber = yezhuHomesnumber;
	}
	public String getYezhu_name() {
		return yezhu_name;
	}
	public void setYezhu_name(String yezhuName) {
		yezhu_name = yezhuName;
	}
	public String getYezhu_sex() {
		return yezhu_sex;
	}
	public void setYezhu_sex(String yezhuSex) {
		yezhu_sex = yezhuSex;
	}
	
	public int getYezhu_age() {
		return yezhu_age;
	}
	public void setYezhu_age(int yezhuAge) {
		yezhu_age = yezhuAge;
	}
	public String getYezhu_tel() {
		return yezhu_tel;
	}
	public void setYezhu_tel(String yezhuTel) {
		yezhu_tel = yezhuTel;
	}
	public String getYezhu_phone() {
		return yezhu_phone;
	}
	public void setYezhu_phone(String yezhuPhone) {
		yezhu_phone = yezhuPhone;
	}
	public String getYezhu_IDC() {
		return yezhu_IDC;
	}
	public void setYezhu_IDC(String yezhuIDC) {
		yezhu_IDC = yezhuIDC;
	}
	public String getYezhu_member() {
		return yezhu_member;
	}
	public void setYezhu_member(String yezhuMember) {
		yezhu_member = yezhuMember;
	}
	public Date getYezhu_date() {
		return yezhu_date;
	}
	public void setYezhu_date(Date yezhuDate) {
		yezhu_date = yezhuDate;
	}
	public String getYezhu_memo() {
		return yezhu_memo;
	}
	public void setYezhu_memo(String yezhuMemo) {
		yezhu_memo = yezhuMemo;
	}
	public int getYezhu_custom_account() {
		return yezhu_custom_account;
	}
	public void setYezhu_custom_account(int yezhuCustomAccount) {
		yezhu_custom_account = yezhuCustomAccount;
	}
	
}
