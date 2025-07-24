package com.project.springai.data.repositories.implementation;


import com.project.springai.data.AbstractRepository;
import com.project.springai.data.entities.Policy;
import com.project.springai.data.repositories.CustomPolicyRepository;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class CustomPolicyRepositoryImpl extends AbstractRepository implements CustomPolicyRepository {

    public Optional<Policy> findNextPolicy() {
        CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
        CriteriaQuery<Policy> query = cb.createQuery(Policy.class);
        Root<Policy> policy = query.from(Policy.class);
        query.select(policy).orderBy(cb.asc(policy.get("policyId")));
        return getEntityManager().createQuery(query).setMaxResults(1).getResultStream().findFirst();
    }
}
