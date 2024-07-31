--------------------------------------------------------
-- Archivo creado  - martes-julio-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ELIMINARFUTBOLISTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."ELIMINARFUTBOLISTA" (
    p_Id IN NUMBER
) IS
BEGIN
    UPDATE AFutbolistas
    SET Estado = 'Inactivo'
    WHERE Id = p_Id;
END;

/
