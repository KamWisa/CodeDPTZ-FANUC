/PROG  FCOUNTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 686;
CREATE		= DATE 22-10-14  TIME 13:17:40;
MODIFIED	= DATE 23-01-18  TIME 15:24:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1058;
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
   1:  R[88]=0    ;
   2:  DO[30]=PULSE,2.0sec ;
   3:  !Counter Sack ;
   4:  IF (DO[4]=OFF AND R[84]=0) THEN ;
   5:  IF (DI[8]=OFF) THEN ;
   6:  R[88]=1    ;
   7:  ELSE ;
   8:  IF (R[82]=1) THEN ;
   9:  DO[7]=PULSE,0.7sec ;
  10:  //MESSAGE[Count Bag L G1] ;
  11:  ELSE ;
  12:  DO[9]=PULSE,0.7sec ;
  13:  //MESSAGE[Count Bag R G1] ;
  14:  ENDIF ;
  15:  ENDIF ;
  16:  ENDIF ;
  17:   ;
  18:  IF (DO[5]=OFF AND R[85]=0) THEN ;
  19:  IF (DI[9]=OFF) THEN ;
  20:  R[88]=1    ;
  21:  ELSE ;
  22:  IF (R[82]=1) THEN ;
  23:  DO[8]=PULSE,0.7sec ;
  24:  //MESSAGE[Count Bag L G2] ;
  25:  ELSE ;
  26:  DO[10]=PULSE,0.7sec ;
  27:  //MESSAGE[Count Bag R G2] ;
  28:  ENDIF ;
  29:  ENDIF ;
  30:  ENDIF ;
  31:  !End Counter Sack ;
  32:   ;
/POS
/END
