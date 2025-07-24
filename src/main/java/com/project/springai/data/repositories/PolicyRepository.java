package com.project.springai.data.repositories;

import com.project.springai.data.entities.Policy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PolicyRepository extends JpaRepository<Policy, Integer>, CustomPolicyRepository {
}
