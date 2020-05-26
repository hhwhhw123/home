package houses.Dao;

import houses.Base.Ts;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class TsServiceImpl implements TsService {
	private static SessionFactory sessionFactory;
	static {
		try {
			Configuration config = new Configuration().configure();
			sessionFactory = config.buildSessionFactory();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
@Override
public List<Ts> getTs(int id) {
	Session session = sessionFactory.openSession();
	Transaction tx = null;
	try {
		tx = session.beginTransaction();
		Query query = session.createQuery("from Ts t where t.tsID =?");
		query.setParameter(0, id);
		List<Ts> ts = query.list();
		tx.commit();
		return ts;
	} catch (Exception e) {
		if (tx != null) {
			tx.rollback();
		}
	} finally {
		session.close();
	}
	return null;
}
	@Override
	public List<Ts> List_ts(int firstResult, int maxResult) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ts t order by t.tsID DESC");
			query.setFirstResult(firstResult);
			query.setMaxResults(maxResult);
			List<Ts> ts = query.list();
			tx.commit();
			return ts;
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public int ts_count() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ts");
			List<Ts> ts = query.list();
			tx.commit();
			return ts.size();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
		} finally {
			session.close();
		}
		return 0;
	}

	@Override
	public void Add_ts(String tsyhm, Date tsrq, String tsnr, String tsStatus) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Ts t = new Ts();
			t.setTsyhm(tsyhm);
			t.setTsrq(tsrq);
			t.setTsnr(tsnr);
			t.setTs_status(tsStatus);
			session.save(t);
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
		} finally {
			session.close();
		}
	}

	@Override
	public void Up_ts(int tsid, String tsStatus) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ts t where t.tsID =?");
			query.setParameter(0, tsid);
			List<Ts> ts = query.list();
			for (Iterator iter = ts.iterator(); iter.hasNext();) {
				Ts m = (Ts) iter.next();
				m.setTs_status(tsStatus);
				session.save(m);
			}
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
		} finally {
			session.close();
		}
	}

	@Override
	public void delete_ts(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ts t where t.tsID =?");
			query.setParameter(0, id);
			List<Ts> xuncha = query.list();
			for (Iterator iter = xuncha.iterator(); iter.hasNext();) {
				Ts m = (Ts) iter.next();
				session.delete(m);
			}
			tx.commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (tx != null) {
				tx.rollback();
			}
		} finally {
			session.close();
		}
	}

	@Override
	public List<Ts> yezhu_ts(String tsyhm) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ts t where t.tsyhm = ?");
			query.setParameter(0, tsyhm);
			List<Ts> ts = query.list();
	        tx.commit();
	        
	        return ts;
		}catch (Exception e) {
			// TODO: handle exception
			if(tx != null)
			{
				tx.rollback();
			}
		}finally{
			session.close();
		}
		return null;
	}
}
