/PROG  FRESET_DATA
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 542;
CREATE		= DATE 23-01-19  TIME 19:46:50;
MODIFIED	= DATE 23-01-19  TIME 21:12:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 810;
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
   3:  R[81]=0    ;
   4:  R[86]=0    ;
   5:  R[85]=0    ;
   6:  R[84]=0    ;
   7:  R[88]=0    ;
   8:  R[89]=0    ;
   9:  !Reset-Connect-Camera ;
  10:  DO[101]=OFF ;
  11:  DO[102]=OFF ;
  12:  DO[103]=OFF ;
  13:  DO[104]=OFF ;
  14:  DO[14]=OFF ;
  15:  !Reset-Blower-PLC ;
  16:  DO[2]=OFF ;
  17:  DO[3]=OFF ;
  18:  DO[4]=OFF ;
  19:  DO[5]=OFF ;
  20:  !Reset-Save-Positon ;
  21:  R[185]=0    ;
  22:  R[186]=0    ;
  23:  R[188]=0    ;
  24:   ;
  25:   ;
  26:  R[59]=1    ;
/POS
/END
