SET ECHO ON
WHENEVER SQLERROR EXIT SQL.SQLCODE
spool '20190128155042_ttt2.log'

set define off

SET SQLBLANKLINES ON

SET ERRORLOGGING ON 

SET ERRORLOGGING ON IDENTIFIER '8c851857-b9d7-4b91-95d1-7b80076158e8'
set linesize 1000;
SELECT sys_context('userenv','server_host') as DATICAL_TRACEFILE_HOSTNAME from dual;
alter session set timed_statistics = true;
alter session set tracefile_identifier =  '20190128155104466';
alter session set max_dump_file_size = unlimited;
alter session set events '10046 trace name context forever, level 1';
SELECT value as DATICAL_TRACE_FILE FROM v$diag_info WHERE name = 'Default Trace File';
ALTER SESSION SET CURRENT_SCHEMA = intuser;
ALTER SESSION SET CURSOR_SHARING = EXACT;
CREATE TABLE "ttt9999991" ("COLUMN1" INTEGER);
alter session set events '10046 trace name context off';

set define on

spool off

exit
