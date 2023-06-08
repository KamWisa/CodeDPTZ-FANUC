/PROG  FHOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 720;
CREATE		= DATE 23-01-19  TIME 21:58:00;
MODIFIED	= DATE 23-01-20  TIME 14:00:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1092;
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
   1:  OVERRIDE=50% ;
   2:  CALL FRESET_DATA    ;
   3:  !Reset-Data-Succeed ;
   4:  WAIT R[59]=1    ;
   5:  MESSAGE[StartProgram DPTZ] ;
   6:  PR[5]=LPOS    ;
   7:  R[49]=PR[5,3]    ;
   8:  IF (R[49]<200 OR R[49]>200) THEN ;
   9:  PR[5,3]=100    ;
  10:  ENDIF ;
  11:L PR[5] 2000mm/sec FINE    ;
  12:  WAIT    .50(sec) ;
  13:   ;
  14:   ;
  15:  IF (PR[5,2]>=0) THEN ;
  16:   ;
  17:  IF (PR[5,2]>=1000 AND PR[5,2]>=(-1000)) THEN ;
  18:   ;
  19:L PR[3] 1000mm/sec CNT100    ;
  20:L PR[1] 1000mm/sec FINE DO[13]=PULSE,1.0sec    ;
  21:   ;
  22:  ELSE ;
  23:L PR[1] 1000mm/sec FINE DO[13]=PULSE,1.0sec    ;
  24:   ;
  25:  ENDIF ;
  26:   ;
  27:  ELSE ;
  28:   ;
  29:L PR[2] 1000mm/sec CNT100    ;
  30:L PR[1] 1000mm/sec FINE DO[13]=PULSE,1.0sec    ;
  31:  ENDIF ;
  32:  WAIT   1.00(sec) ;
  33:  //MESSAGE[PositonHomeReady] ;
  34:  R[59]=7    ;
/POS
/END
