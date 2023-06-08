/PROG  FDELREGISTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DPTZ";
PROG_SIZE	= 430;
CREATE		= DATE 22-11-02  TIME 15:27:48;
MODIFIED	= DATE 22-11-18  TIME 13:53:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 738;
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
   4:  R[188]=0    ;
   5:  R[186]=0    ;
   6:  R[185]=0    ;
   7:  !SavePosition ;
   8:   ;
   9:  FOR R[190]=191 TO 222 ;
  10:  R[R[190]]=0    ;
  11:  ENDFOR ;
  12:  //MESSAGE[DEL Frist Save] ;
  13:  FOR R[230]=231 TO 262 ;
  14:  R[R[230]]=0    ;
  15:  ENDFOR ;
  16:  MESSAGE[DEL Save Possotion] ;
/POS
/END
