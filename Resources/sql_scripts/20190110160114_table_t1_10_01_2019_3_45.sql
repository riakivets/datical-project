SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20190110160114_table_t1_10_01_2019_3_45.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER 'dd9a1586-2515-4896-8023-c29819bf293f'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20190110160116667';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
CREATE TABLE "INTUSER"."table_t1_10_01_2019_3_45" ("COLUMN1_someName" INTEGER, "yyyyyy_COLUMN2" INTEGER);
alter session set events '10046 trace name context off';

set define on

spool off

exit
