package com.project.springai.data.repositories;


import com.project.springai.data.entities.Policyholder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PolicyholderRepository extends JpaRepository<Policyholder, Integer>, CustomPolicyholderRepository {
}
