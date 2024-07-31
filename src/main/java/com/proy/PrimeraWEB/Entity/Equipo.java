package com.proy.PrimeraWEB.Entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "AEquipos")

public class Equipo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private String ciudad;
    private String estadio;
    private Date fundacion;
    private String presidente;
    private Integer titulos;
    private String liga;
    private String estado;

    // Getters and Setters


}
