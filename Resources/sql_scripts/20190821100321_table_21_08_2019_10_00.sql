SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20190821100321_table_21_08_2019_10_00.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER '5cf7280c-7a26-4be0-b136-d38506f2ecb5'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20190821100416600';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
CREATE TABLE "INTUSER"."table_21_08_2019_10_00.sql" ("COLUMN1" INTEGER, "COLUMN2" INTEGER);
alter session set events '10046 trace name context off';

set define on

spool off

exit
