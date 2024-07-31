package com.proy.PrimeraWEB.Entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "AFutbolistas")

public class Futbolista {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private Date fechaNacimiento;
    private String nacionalidad;
    private String posicion;
    private Double altura;
    private Double peso;
    private String estado;

    // Getters and Setters



}

