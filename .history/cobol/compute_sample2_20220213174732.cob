IDENTIFICATION                  DIVISION.
 PROGRAM-ID.                     COMPUTE_SAMPLE02.
 
 ENVIRONMENT                     DIVISION.
 CONFIGURATION                   SECTION.
 DATA                            DIVISION.
 WORKING-STORAGE                 SECTION.
   01 WORK-AREA.
     03 WORK-NUM                 PIC 9(3) VALUE 2.
     03 WORK-PI                  PIC 9(3)V99999 VALUE 3.14159.
     03 WORK-RADIUS              PIC 9(3).
     03 WORK-SUM                 PIC 9(3).
 
 PROCEDURE                       DIVISION.
 MAIN                            SECTION.
 

   MOVE 60 TO WORK-RADIUS.
    

   COMPUTE WORK-SUM ROUNDED =
   (WORK-NUM * WORK-RADIUS) * WORK-PI.
   DISPLAY "円周率の長さ：" WORK-SUM.
        
   STOP RUN. 