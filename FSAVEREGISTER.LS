/PROG  FSAVEREGISTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 992;
CREATE		= DATE 22-10-26  TIME 21:28:10;
MODIFIED	= DATE 22-11-18  TIME 13:49:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1436;
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
   1:  R[190]=191    ;
   2:  R[230]=231    ;
   3:  R[189]=7    ;
   4:  !SavePosition ;
   5:   ;
   6:  IF (R[186]=1 OR R[185]=1) THEN ;
   7:  IF (R[102]=2 AND R[103]=2 AND R[104]=2 AND R[105]=2 AND R[3]=4) THEN ;
   8:  JMP LBL[9] ;
   9:  ELSE ;
  10:  CALL FDELREGISTER    ;
  11:  JMP LBL[8] ;
  12:  ENDIF ;
  13:  ENDIF ;
  14:   ;
  15:  LBL[9] ;
  16:  IF (R[3]=4) THEN ;
  17:  IF (R[102]=2 AND R[103]=2 AND R[104]=2 AND R[105]=2) THEN ;
  18:  IF (R[188]=1) THEN ;
  19:   ;
  20:  IF (R[185]=1) THEN ;
  21:  R[186]=2    ;
  22:  ELSE ;
  23:  R[186]=1    ;
  24:  ENDIF ;
  25:   ;
  26:  FOR R[190]=191 TO 222 ;
  27:  R[R[190]]=R[R[189]]    ;
  28:  R[189]=R[189]+1    ;
  29:  ENDFOR ;
  30:  MESSAGE[Frist Save] ;
  31:  R[188]=2    ;
  32:  ELSE ;
  33:   ;
  34:  IF (R[186]=1) THEN ;
  35:  R[185]=2    ;
  36:  ELSE ;
  37:  R[185]=1    ;
  38:  ENDIF ;
  39:   ;
  40:  FOR R[230]=231 TO 262 ;
  41:  R[R[230]]=R[R[189]]    ;
  42:  R[189]=R[189]+1    ;
  43:  ENDFOR ;
  44:  MESSAGE[Second Save] ;
  45:  R[188]=1    ;
  46:  ENDIF ;
  47:  ENDIF ;
  48:  ENDIF ;
  49:  LBL[8] ;
/POS
/END
