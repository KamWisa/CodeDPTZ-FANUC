/PROG  TESTMOTION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 574;
CREATE		= DATE 22-10-11  TIME 23:44:42;
MODIFIED	= DATE 22-12-01  TIME 12:46:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 982;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  LBL[3] ;
   2:  R[62]=2    ;
   3:L PR[1] 3000mm/sec FINE    ;
   4:  WAIT (R[62]=1 OR R[62]=2)    ;
   5:  IF R[62]=1,JMP LBL[1] ;
   6:  IF R[62]=2,JMP LBL[2] ;
   7:  LBL[1] ;
   8:  FOR R[99]=51 TO 58 ;
   9:L PR[50] 3000mm/sec FINE    ;
  10:L PR[R[99]] 3000mm/sec CNT50 Tool_Offset,PR[59]    ;
  11:L PR[R[99]] 3000mm/sec FINE    ;
  12:L PR[R[99]] 3000mm/sec CNT50 Tool_Offset,PR[59]    ;
  13:L PR[50] 3000mm/sec FINE    ;
  14:  ENDFOR ;
  15:  JMP LBL[3] ;
  16:  LBL[2] ;
  17:  FOR R[99]=61 TO 68 ;
  18:L PR[60] 3000mm/sec FINE    ;
  19:L PR[R[99]] 3000mm/sec CNT10 Tool_Offset,PR[59]    ;
  20:L PR[R[99]] 3000mm/sec FINE    ;
  21:L PR[R[99]] 3000mm/sec CNT10 Tool_Offset,PR[59]    ;
  22:L PR[60] 3000mm/sec FINE    ;
  23:  ENDFOR ;
  24:  JMP LBL[3] ;
/POS
/END
