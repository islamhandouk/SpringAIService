package com.project.springai.data;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.PersistenceContext;
import lombok.Getter;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Qualifier;

@Getter
public abstract class AbstractRepository {

    public AbstractRepository() {
    }

    @Qualifier("entityManagerFactory")
    @PersistenceContext( unitName = "entityManagerFactory")
    private EntityManager entityManager;

    /**
     * Obtains a new Hibernate Session from the EntityManagerFactory.
     * <p>
     * This method is considered a bad practice because it creates a new EntityManager
     * each time it is called, which can lead to memory leaks and resource exhaustion.
     * EntityManagers should be reused or properly closed after use to avoid such issues.
     * Not managed by Spring's transaction management.
     *
     * @return a new Hibernate Session
     */
    protected Session getLeakySession(){
        EntityManagerFactory entityManagerFactory = getEntityManager().getEntityManagerFactory();
        EntityManager newEntityManager = entityManagerFactory.createEntityManager();
        return newEntityManager.unwrap(Session.class);
    }

    /**
     * Obtains the current Hibernate Session from the EntityManager.
     * <p>
     * This method is preferred over getSession() as it reuses the existing EntityManager
     * managed by Spring's transaction management, thus avoiding memory leaks and resource exhaustion.
     *
     * @return the current Hibernate Session
     */
    protected Session getSession() {
        return getEntityManager().unwrap(Session.class);
    }
}
