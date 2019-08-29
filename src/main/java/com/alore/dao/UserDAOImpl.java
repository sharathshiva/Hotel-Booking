package com.alore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

import com.alore.database.JPAUtils;
import com.alore.model.User;


@Repository
public class UserDAOImpl implements UserDAO{

	EntityManagerFactory emf=JPAUtils.getEntityManagerFactory();
	
	EntityManager em=emf.createEntityManager();
	
	EntityTransaction transaction=em.getTransaction();
	
	public boolean registerUser(User user) {
		boolean result = false;
		em.getTransaction().begin();
		try {
			em.persist(user);
			em.getTransaction().commit();
			result=true;
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		emf.close();
		return result;
	}

	public boolean deleteUser(String email) {
		boolean result=false;
		em.getTransaction().begin();
		User user=null;
		try {
			user=em.find(User.class, email);
			em.remove(user);
			result=true;
			
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		em.close();
		return result;
	}

	public boolean updateUser(User user) {
		boolean status=false;
		em.getTransaction().begin();
		try {
			String hql="update User user set user.password=:password,user.email=:email,user.city=:city,user.state=:state,user.pincode=:pincode";	
			Query query=em.createQuery(hql);
			query.setParameter("password",user.getPassword());
			query.setParameter("email",user.getEmail());
			query.setParameter("city",user.getCity());
			query.setParameter("state",user.getState());
			query.setParameter("pincode",user.getPincode());
			}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
		em.getTransaction().commit();
		em.close();
		return status;
	}

	@SuppressWarnings("unchecked")
	public User loginUser(User user) {
		em.getTransaction().begin();
		String hql="from User user user.email=:email  and user.password=:password";
		User user1=null;
		try {
		Query query=em.createQuery(hql);
		query.setParameter("email",user.getEmail());
		query.setParameter("password",user.getPassword());
		List<User> users=null;
		
		users=query.getResultList();
		for(Object object:users) {
			if(object!=null) {
				user1=(User)object;
				if(user1!=null) {
					return user1;
				}
			}
		}
			transaction.commit();
		}catch(Exception e) {
			transaction.rollback();
			e.printStackTrace();	
		}
		em.close();
		return user1;
	}

}
