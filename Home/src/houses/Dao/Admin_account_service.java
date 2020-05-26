package houses.Dao;

/**
 * 类名: Admin_account_service
 * 描述: 管理员账号服务
 */
public interface Admin_account_service {
	
	/**
	 * 管理员登录验证
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public Boolean loginCheck(String username, String password);

	/**
	 * 根据账户查找管理员的姓名
	 * 
	 * @param username
	 * @return
	 */
	public String admin_name(String username);

}
