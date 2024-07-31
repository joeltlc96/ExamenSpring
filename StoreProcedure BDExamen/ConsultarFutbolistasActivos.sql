--------------------------------------------------------
-- Archivo creado  - martes-julio-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure CONSULTARFUTBOLISTASACTIVOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CONSULTARFUTBOLISTASACTIVOS" (
    p_Cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_Cursor FOR
    SELECT * FROM AFutbolistas WHERE Estado = 'Activo';
END;

/
