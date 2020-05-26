package houses.Dao;

import houses.Base.Cars;

import java.util.Date;
import java.util.List;

public interface CarsService {
	
	/**
	 * 分页查询
	 * 
	 * @param firstResult
	 * @param maxResult
	 * @return
	 */
	public List<Cars> listCars(int firstResult, int maxResult);

	/**
	 * 车辆总记录数
	 * 
	 * @return
	 */
	public int countCars();

	/**
	 * 车位登记
	 * 
	 * @param carowner
	 * @param carspace
	 * @param housenumber
	 * @param licensenumber
	 * @param contactway
	 * @param carmsg
	 * @param enddate
	 */
	public void addCars(String carowner, String carspace, String housenumber,
			String licensenumber, String contactway, String carmsg, Date enddate, String sfbz);

	/**
	 * 删除车位信息
	 * 
	 * @param id
	 */
	public void deleteCars(int id); 

	/**
	 * 更新车位信息
	 * 
	 * @param id
	 * @param carowner
	 * @param carspace
	 * @param housenumber
	 * @param licensenumber
	 * @param contactway
	 * @param carmsg
	 * @param enddate
	 */
	public void updataCars(int id, String carowner, String carspace,
			String housenumber, String licensenumber, String contactway,
			String carmsg, Date enddate, String sfbz);

	public List<Cars> modifyCars(int id);
}
