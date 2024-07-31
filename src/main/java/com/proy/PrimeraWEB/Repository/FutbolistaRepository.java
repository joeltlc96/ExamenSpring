package com.proy.PrimeraWEB.Repository;

import com.proy.PrimeraWEB.Entity.Futbolista;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FutbolistaRepository extends JpaRepository<Futbolista, Long> {
}