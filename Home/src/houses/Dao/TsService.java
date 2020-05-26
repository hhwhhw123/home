package houses.Dao;

import houses.Base.Ts;

import java.util.Date;
import java.util.List;
public interface TsService {
	// 分页查询投诉信息
	public List<Ts> List_ts(int firstResult, int maxResult);
	// 投诉总行数
	public int ts_count();
	// 添加投诉
	public void Add_ts(String tsyhm, Date tsrq, String tsnr, String ts_status);
	// 处理投诉
	public void Up_ts(int tsid, String tsStatus);
	// 业主用户名查询投诉信息
	public List<Ts> yezhu_ts(String tsyhm);
	// 删除投诉信息
	public void delete_ts(int id);
	
	public List<Ts> getTs(int id);
}
