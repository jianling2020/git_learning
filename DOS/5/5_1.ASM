DATA SEGMENT
X DW 4
Y DW 2
Z DW 14H
V DW 18H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA;
START:
      MOV AX,DATA;
      MOV DS,AX;
      MOV AX,X;
      MUL Y;
      MOV BX,AX;
      MOV CX,DX;
      ADD AX,Z;
      ADC CX,0H;
      MOV BX,AX;
      CWD ;
      SUB AX,16;
      SBB CX,0H;
      MOV BX,AX;
      CWD ;
      MOV AX,V;      
      SUB AX,BX;
      CWD ;
      DIV X;
      MOV AH,4CH;
      INT 21H;
CODE ENDS;
END START;
CODE ENDS;
