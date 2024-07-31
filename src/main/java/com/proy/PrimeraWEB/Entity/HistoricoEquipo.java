package com.proy.PrimeraWEB.Entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "AHistoricoEquipos")

public class HistoricoEquipo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "FutbolistaId")
    private Futbolista futbolista;

    @ManyToOne
    @JoinColumn(name = "EquipoId")
    private Equipo equipo;

    private Date fechaInicio;
    private Date fechaFin;

    // Getters and Setters

}
