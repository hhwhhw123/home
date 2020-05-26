package houses.Dao;

import java.util.List;

import houses.Base.Yezhu;
/**
 * 类名: Custom_account_service
 * 描述: 住户服务
 */
public interface Custom_account_service {
	/**
	 * 住户登录验证
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public Boolean customLoginCheck(String username,String password);
	
	/**
	 * 分配账户
	 * 
	 * @param username
	 * @param password
	 * @param yezhuID
	 */
	public void add_custom_account(String username,String password,int yezhuID);
	
	/**
	 * 查询业主是否被分配了账号
	 * 
	 * @param yezhuID
	 * @return
	 */
	public int search_yezhu_account(int yezhuID);
	
	/**
	 * 删除业主账号
	 * 
	 * @param yezhuID
	 */
	public void delete_custom_account(int yezhuID);
	 
	/**
	 * 根据账户密码，查找业主门牌号
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public List<Yezhu> search_yezhu_number(String username,String password);
	
	/**
	 * 修改业主账户密码
	 * 
	 * @param id
	 * @param oldpsd
	 * @param psd
	 * @return
	 */
	public int modify_custom_psd(int id,String oldpsd,String psd);
}