package com.proy.PrimeraWEB.Repository;


import com.proy.PrimeraWEB.Entity.HistoricoEquipo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HistoricoEquipoRepository extends JpaRepository<HistoricoEquipo, Long> {
}