DATA SEGMENT           ;
S DB 'HELLO WORLD $   ;'
DATA ENDS;
CODE SEGMENT          ;
ASSUME  CS:CODE,DS:DATA;
START : MOV AX,DATA;
        MOV DS,AX ;
        MOV DX,OFFSET S;
        MOV AH,9;
        INT 21H;
        MOV AH,4CH ;
        INT 21H;
CODE ENDS                 ;
END START;
