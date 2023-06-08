/PROG  FONVAUL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 878;
CREATE		= DATE 23-01-19  TIME 22:05:36;
MODIFIED	= DATE 23-01-19  TIME 22:05:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 1206;
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
   1:  //MESSAGE[WaitCalculateValve] ;
   2:  !On Valve ;
   3:   ;
   4:  IF (R[81]>1 AND R[R[58]]=2) THEN ;
   5:  DO[3]=OFF ;
   6:  R[81]=R[81]-1    ;
   7:  //MESSAGE[ - Sackremain] ;
   8:  ELSE ;
   9:  DO[3]=ON ;
  10:  DO[5]=ON ;
  11:  //MESSAGE[solenoid off 2] ;
  12:  ENDIF ;
  13:   ;
  14:  IF (R[81]>0) THEN ;
  15:  R[81]=R[81]-1    ;
  16:  //MESSAGE[ - Sackremain] ;
  17:  ELSE ;
  18:  DO[4]=ON ;
  19:  //MESSAGE[solenoid off 1] ;
  20:  ENDIF ;
  21:   ;
  22:  R[58]=R[58]+1    ;
  23:   ;
  24:  IF (DI[11]=ON) THEN ;
  25:  DO[3]=ON ;
  26:  DO[5]=ON ;
  27:  //MESSAGE[Mode 1 Bag] ;
  28:  ENDIF ;
  29:   ;
  30:  !End Onvalve ;
  31:  //MESSAGE[OK-CalculateValve] ;
  32:   ;
  33:  IF (PR[R[56],1]>100) THEN ;
  34:  R[93]=R[90]    ;
  35:  R[92]=R[91]    ;
  36:  //MESSAGE[Setting VEL ACC X > 100] ;
  37:  ELSE ;
  38:  R[93]=R[95]    ;
  39:  R[92]=R[96]    ;
  40:  //MESSAGE[Default VEL ACC X < 100] ;
  41:  ENDIF ;
  42:   ;
  43:  R[59]=5    ;
/POS
/END
