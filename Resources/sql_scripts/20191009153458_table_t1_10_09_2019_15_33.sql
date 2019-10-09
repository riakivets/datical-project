SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20191009153458_table_t1_10_09_2019_15_33.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER '8eab5b7c-4629-4f5c-adfa-7210cc257c18'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20191009153500784';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
exec DBMS_APPLICATION_INFO.SET_CLIENT_INFO ('Datical Client');
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
CREATE TABLE "INTUSER"."table_t1_10_09_2019_15_33" ("COLUMN1_someName" INTEGER, "yyyyyy_COLUMN2" INTEGER);
alter session set events '10046 trace name context off';

set define on

spool off

exit
