/PROG  PICKERROR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 566;
CREATE		= DATE 22-10-15  TIME 08:15:22;
MODIFIED	= DATE 23-01-19  TIME 21:08:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 834;
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
   1:  !SetDefaultPickError ;
   2:  R[84]=0    ;
   3:  R[85]=0    ;
   4:  !CheckPickError G1 ;
   5:  IF (DO[4]=OFF) THEN ;
   6:  IF (DI[8]=OFF) THEN ;
   7:  R[84]=1    ;
   8:  ELSE ;
   9:  R[84]=0    ;
  10:  ENDIF ;
  11:  ENDIF ;
  12:  !CheckPickError G2 ;
  13:  IF (DO[5]=OFF) THEN ;
  14:  IF (DI[9]=OFF) THEN ;
  15:  R[85]=1    ;
  16:  ELSE ;
  17:  R[85]=0    ;
  18:  ENDIF ;
  19:  ENDIF ;
  20:   ;
  21:  !Up X-Left ;
  22:  IF (R[57]=R[3]) THEN ;
  23:  DO[11]=PULSE,1.0sec ;
  24:  ENDIF ;
  25:   ;
  26:  DO[31]=PULSE,2.0sec ;
/POS
/END
