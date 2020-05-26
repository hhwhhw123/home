package houses.Dao;

import houses.Base.Notify;

import java.util.Date;
import java.util.List;


public interface Notify_service {
	
	public void Add_notify(String content,Date date,String title,String uper, String lb, String zt);//添加新闻
	
	public List<Notify> List_notify(int firstResult,int maxResult);//分页查询
	
	public List<Notify> modify_notify(int id);
	
	public void Updata_notify(int id,String title,String content,Date date,String uper, String lb, String zt);//根据ID更改新闻
	
	public void Del_notify(int id);//删除新闻
	
	public int Notify_count(); //新闻条数
	
	public List<Notify> new_notify();//最新新闻
	
}
