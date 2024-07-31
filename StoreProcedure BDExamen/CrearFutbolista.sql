--------------------------------------------------------
-- Archivo creado  - martes-julio-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure CREARFUTBOLISTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CREARFUTBOLISTA" (
    p_Nombre IN VARCHAR2,
    p_FechaNacimiento IN DATE,
    p_Nacionalidad IN VARCHAR2,
    p_Posicion IN VARCHAR2,
    p_Altura IN NUMBER,
    p_Peso IN NUMBER,
    p_Estado IN VARCHAR2
) IS
BEGIN
    INSERT INTO AFutbolistas (Nombre, FechaNacimiento, Nacionalidad, Posicion, Altura, Peso, Estado)
    VALUES (p_Nombre, p_FechaNacimiento, p_Nacionalidad, p_Posicion, p_Altura, p_Peso, p_Estado);
END;

/
