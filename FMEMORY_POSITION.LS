/PROG  FMEMORY_POSITION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 802;
CREATE		= DATE 22-11-21  TIME 10:18:00;
MODIFIED	= DATE 23-01-19  TIME 21:25:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 1150;
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
   1:  //MESSAGE[Memory Position] ;
   2:  R[190]=191    ;
   3:  R[230]=231    ;
   4:  R[189]=7    ;
   5:  !SavePosition ;
   6:   ;
   7:  IF (R[102]=2 AND R[103]=2 AND R[104]=2 AND R[105]=2 AND R[3]=4) THEN ;
   8:  R[186]=1    ;
   9:  ELSE ;
  10:  R[186]=0    ;
  11:  ENDIF ;
  12:   ;
  13:  IF (R[186]=1 AND R[185]=1) THEN ;
  14:   ;
  15:  FOR R[190]=191 TO 222 ;
  16:  R[R[190]]=R[R[189]]    ;
  17:  R[189]=R[189]+1    ;
  18:  ENDFOR ;
  19:  MESSAGE[Frist Save] ;
  20:  R[187]=1    ;
  21:   ;
  22:  ELSE ;
  23:   ;
  24:  IF (R[186]=1) THEN ;
  25:  FOR R[230]=231 TO 262 ;
  26:  R[R[230]]=R[R[189]]    ;
  27:  R[189]=R[189]+1    ;
  28:  ENDFOR ;
  29:  MESSAGE[Second Save] ;
  30:  R[188]=1    ;
  31:   ;
  32:  ELSE ;
  33:   ;
  34:  CALL FRESET_MEMORY    ;
  35:   ;
  36:  ENDIF ;
  37:   ;
  38:  ENDIF ;
  39:   ;
  40:  R[59]=6    ;
/POS
/END
