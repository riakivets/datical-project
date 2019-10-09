SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20191009131210_table_t1_10_09_2019_13_10.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER '504744a8-7d3c-459e-9300-a40933766695'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20191009131212932';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
exec DBMS_APPLICATION_INFO.SET_CLIENT_INFO ('Datical Client');
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
CREATE TABLE "INTUSER"."table_t1_10_09_2019_13_10" ("COLUMN1_someName" INTEGER, "yyyyyy_COLUMN2" INTEGER);
alter session set events '10046 trace name context off';

set define on

spool off

exit
