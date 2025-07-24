package com.project.springai.data.repositories;


import com.project.springai.data.entities.Claim;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClaimRepository extends JpaRepository<Claim, Integer>, CustomClaimRepository {
}