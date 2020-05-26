package houses.Dao;

import houses.Base.Custom_account;
import houses.Base.Yezhu;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
/**
 * 类名: Custom_account_serviceImpl
 * 描述: 住户服务实现
 */
public class Custom_account_serviceImpl implements Custom_account_service {
	
	private static SessionFactory sessionFactory;
	
	static {
		try {
			Configuration config = new Configuration().configure();
			sessionFactory = config.buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public Boolean customLoginCheck(String username,String password) {
		Boolean r = false;
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Custom_account a where a.custom_username=? and a.custom_password=?");
			query.setParameter(0, username);
			query.setParameter(1, password);
			List userlist = query.list();
			if(userlist.size()>0) 
				r = true;
	        tx.commit();
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
		return r;
	}
	
	@Override
	public void add_custom_account(String username, String password,
			int yezhuID) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Custom_account c = new Custom_account();
			c.setCustom_username(username);
			c.setCustom_password(password);
			c.setCustom_yezhuID(yezhuID);
			session.save(c);
	        tx.commit();
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public int search_yezhu_account(int yezhuID) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Custom_account c where c.custom_yezhuID=?");
			query.setParameter(0, yezhuID);
			List userlist = query.list();
			tx.commit();
			return userlist.size();
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
		return 0;
	}
		
	@Override
	@SuppressWarnings("unchecked")
	public void delete_custom_account(int yezhuID) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Custom_account c where c.custom_yezhuID=?");
			query.setParameter(0, yezhuID);
			List userlist = query.list();
			for(Iterator iter=userlist.iterator();iter.hasNext();) {
				Custom_account c = (Custom_account)iter.next();
				session.delete(c);
			}
			tx.commit();
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
	}
		
	@Override
	@SuppressWarnings("unchecked")
	public List<Yezhu> search_yezhu_number(String username, String password) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Custom_account c where c.custom_username=? and c.custom_password=?");
			query.setParameter(0, username);
			query.setParameter(1, password);
			List userlist = query.list();
			for(Iterator iter=userlist.iterator();iter.hasNext();) {
				Custom_account c = (Custom_account)iter.next();
				Query q =session.createQuery("from Yezhu y where y.yezhuID =?");
				q.setParameter(0, c.getCustom_yezhuID());
				List<Yezhu> yezhu = q.list();
				return yezhu;
			}
			tx.commit();
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
		return null;
	}
		
	@Override
	@SuppressWarnings("unchecked")
	public int modify_custom_psd(int id,String oldpsd,String psd) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Custom_account c where c.custom_yezhuID =? and c.custom_password =?");
			query.setParameter(0, id);
			query.setParameter(1, oldpsd);
			List<Custom_account> custom_account = query.list();
			if(custom_account.size() == 0) {
				return 0;
			} else {
				for(Iterator iter=custom_account.iterator();iter.hasNext();) {
					Custom_account ca =(Custom_account)iter.next();
					ca.setCustom_password(psd);
				}
				tx.commit();
				return 1;
			}
		}catch (Exception e) {
			if(tx != null) {
				tx.rollback();
			}
		}finally{
			session.close();
		}
		return 0;
	}

}
