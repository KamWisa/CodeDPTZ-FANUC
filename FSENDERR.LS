/PROG  FSENDERR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 502;
CREATE		= DATE 23-01-19  TIME 22:14:36;
MODIFIED	= DATE 23-01-31  TIME 14:01:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 798;
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
   1:  R[59]=1    ;
   2:   ;
   3:  IF ((R[84]=1 OR R[85]=1) AND R[86]>=3) THEN ;
   4:  MESSAGE[Alarm No Pick] ;
   5:  R[86]=0    ;
   6:  CALL FRESET_MEMORY    ;
   7:  DO[2]=OFF ;
   8:L PR[1] 3000mm/sec FINE DO[16]=PULSE,1.0sec    ;
   9:  WAIT    .50(sec) ;
  10:  ENDIF ;
  11:   ;
  12:  IF (R[88]=1) THEN ;
  13:  MESSAGE[Alarm No Bag] ;
  14:L PR[1] 2500mm/sec FINE    ;
  15:  CALL FRESET_MEMORY    ;
  16:  DO[2]=OFF ;
  17:  DO[19]=PULSE,1.0sec ;
  18:  WAIT    .50(sec) ;
  19:  ENDIF ;
  20:   ;
  21:  R[59]=8    ;
/POS
/END
