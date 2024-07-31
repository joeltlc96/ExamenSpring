--------------------------------------------------------
-- Archivo creado  - martes-julio-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ACTUALIZARFUTBOLISTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."ACTUALIZARFUTBOLISTA" (
    p_Id IN NUMBER,
    p_Nombre IN VARCHAR2,
    p_FechaNacimiento IN DATE,
    p_Nacionalidad IN VARCHAR2,
    p_Posicion IN VARCHAR2,
    p_Altura IN NUMBER,
    p_Peso IN NUMBER,
    p_Estado IN VARCHAR2
) IS
BEGIN
    UPDATE AFutbolistas
    SET Nombre = p_Nombre,
        FechaNacimiento = p_FechaNacimiento,
        Nacionalidad = p_Nacionalidad,
        Posicion = p_Posicion,
        Altura = p_Altura,
        Peso = p_Peso,
        Estado = p_Estado
    WHERE Id = p_Id;
END;

/
