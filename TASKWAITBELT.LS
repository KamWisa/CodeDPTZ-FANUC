/PROG  TASKWAITBELT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Awayon";
PROG_SIZE	= 1076;
CREATE		= DATE 22-10-14  TIME 13:39:42;
MODIFIED	= DATE 23-01-30  TIME 15:48:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 1396;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !TaskAwayOn ;
   2:  R[998]=$system_time[1].RUN_TOT ;
   3:  R[998]=R[998]/60    ;
   4:  IF (R[998]=65535) THEN ;
   5:  R[998]=0    ;
   6:  ENDIF ;
   7:  R[97]=GI[62]    ;
   8:   ;
   9:  !Wait For Belt ;
  10:  IF (R[82]=1) THEN ;
  11:  !SensorLeft ;
  12:  IF (DI[5]=ON AND DI[6]=ON) THEN ;
  13:  R[52]=1    ;
  14:  ELSE ;
  15:  R[52]=0    ;
  16:  ENDIF ;
  17:  ENDIF ;
  18:  IF (R[82]=2) THEN ;
  19:  !SensorRight ;
  20:  IF (DI[15]=ON AND DI[16]=ON) THEN ;
  21:  R[52]=1    ;
  22:  ELSE ;
  23:  R[52]=0    ;
  24:  ENDIF ;
  25:  ENDIF ;
  26:  !End Wait For Belt ;
  27:   ;
  28:  !SetHigh PLC > PR[19,3] ;
  29:  R[60]=GI[59]    ;
  30:  R[60]=R[60]*(-1)    ;
  31:   ;
  32:  IF (DI[11]=OFF) THEN ;
  33:  ENDIF ;
  34:  R[79]=GI[60]    ;
  35:  R[79]=R[79]/1000    ;
  36:   ;
  37:  R[80]=GI[61]    ;
  38:  R[80]=R[80]/1000    ;
  39:   ;
  40:  IF (DI[13]=OFF AND R[82]=2) THEN ;
  41:  R[61]=1    ;
  42:  ELSE ;
  43:  R[61]=0    ;
  44:  ENDIF ;
  45:  IF (DI[3]=OFF AND R[82]=1) THEN ;
  46:  R[89]=1    ;
  47:  ELSE ;
  48:  R[89]=0    ;
  49:  ENDIF ;
  50:   ;
  51:  IF (TIMER[1]>20) THEN ;
  52:  DO[2]=PULSE,0.5sec ;
  53:  ENDIF ;
/POS
/END
