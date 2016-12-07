--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-07-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View SALARY_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "HR"."SALARY_VIEW" ("NOMBRE_EQUIPO", "NOMBRE_JUGADOR", "SALARY") AS 
  SELECT
  e.NOMBRE_EQUIPO,
  j.NOMBRE_JUGADOR,
  j.SALARY
  FROM
  EQUIPO e,
  JUGADORES j
  
WHERE e.EQUIPO_ID = j.EQUIPO_ID
and j.SALARY >= 2000

WITH READ ONLY;
