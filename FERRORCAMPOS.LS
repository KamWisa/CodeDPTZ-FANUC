/PROG  FERRORCAMPOS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 778;
CREATE		= DATE 22-11-18  TIME 12:58:02;
MODIFIED	= DATE 23-01-25  TIME 14:34:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1130;
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
   1:  R[59]=0    ;
   2:   ;
   3:  //IF (DI[3]=ON) THEN ;
   4:  //IF (R[43]<0 OR R[41]>0) THEN ;
   5:  //MESSAGE[LeftCamera Error ] ;
   6:  //R[53]=1    ;
   7:  //ELSE ;
   8:  //R[53]=0    ;
   9:  //ENDIF ;
  10:  //ENDIF ;
  11:  //IF (DI[13]=ON) THEN ;
  12:  //IF (R[43]>0 OR R[41]>0) THEN ;
  13:  //MESSAGE[RightCamera Error ] ;
  14:  //R[53]=1    ;
  15:  //ELSE ;
  16:  //R[53]=0    ;
  17:  //ENDIF ;
  18:  //ENDIF ;
  19:   ;
  20:  IF (DI[3]=ON) THEN ;
  21:  IF (R[43]<0) THEN ;
  22:  MESSAGE[LeftCamera Error ] ;
  23:  R[53]=1    ;
  24:  ELSE ;
  25:  R[53]=0    ;
  26:  ENDIF ;
  27:  ENDIF ;
  28:  IF (DI[13]=ON) THEN ;
  29:  IF (R[43]>0) THEN ;
  30:  MESSAGE[RightCamera Error ] ;
  31:  R[53]=1    ;
  32:  ELSE ;
  33:  R[53]=0    ;
  34:  ENDIF ;
  35:  ENDIF ;
  36:   ;
  37:  R[59]=4    ;
/POS
/END
