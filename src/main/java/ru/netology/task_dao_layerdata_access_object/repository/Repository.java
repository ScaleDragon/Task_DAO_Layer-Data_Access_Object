package ru.netology.task_dao_layerdata_access_object.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import java.util.List;


@org.springframework.stereotype.Repository
public class Repository {
    @PersistenceContext
    private EntityManager entityManager;

    public List<String> findProductNamesByCustomerName(String name) {
        String jpql = "SELECT o.productName FROM Order o WHERE LOWER(o.customer.name) = LOWER(:name)";
        TypedQuery<String> query = entityManager.createQuery(jpql, String.class);
        query.setParameter("name", name);
        return query.getResultList();
    }
}
