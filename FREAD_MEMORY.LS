/PROG  FREAD_MEMORY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 632;
CREATE		= DATE 22-11-21  TIME 10:18:20;
MODIFIED	= DATE 23-01-19  TIME 20:16:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1000;
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
   1:  //MESSAGE[Read Memory] ;
   2:  R[59]=0    ;
   3:   ;
   4:  IF (R[185]=1) THEN ;
   5:   ;
   6:  R[189]=7    ;
   7:  R[190]=191    ;
   8:  FOR R[190]=191 TO 222 ;
   9:  R[R[189]]=R[R[190]]    ;
  10:  R[189]=R[189]+1    ;
  11:  ENDFOR ;
  12:   ;
  13:  ELSE ;
  14:   ;
  15:  R[189]=7    ;
  16:  FOR R[230]=231 TO 262 ;
  17:  R[R[189]]=R[R[230]]    ;
  18:  R[189]=R[189]+1    ;
  19:  ENDFOR ;
  20:   ;
  21:  ENDIF ;
  22:   ;
  23:  R[3]=4    ;
  24:   ;
  25:  FOR R[111]=102 TO 105 ;
  26:  R[R[111]]=2    ;
  27:  ENDFOR ;
  28:   ;
  29:  FOR R[111]=106 TO 110 ;
  30:  R[R[111]]=0    ;
  31:  ENDFOR ;
  32:   ;
  33:  R[59]=3    ;
/POS
/END
