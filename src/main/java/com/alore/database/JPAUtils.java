package com.alore.database;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtils {

	private static final EntityManagerFactory EMF = getEMF();

	private static EntityManagerFactory getEMF() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myPersistenceUnit");
		return emf;
	}
	
	public static EntityManagerFactory getEntityManagerFactory() {
		return EMF;
	}
}
