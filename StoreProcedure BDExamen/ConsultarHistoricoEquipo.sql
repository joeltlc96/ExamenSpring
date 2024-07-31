--------------------------------------------------------
-- Archivo creado  - martes-julio-30-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure CONSULTARHISTORICOEQUIPOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."CONSULTARHISTORICOEQUIPOS" (
    p_FutbolistaId IN NUMBER,
    p_Cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN p_Cursor FOR
    SELECT * FROM AHistoricoEquipos
    WHERE FutbolistaId = p_FutbolistaId;
END;

/
