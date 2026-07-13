/* Source: "Chapter - 5  assignment.sas" (Chapter 5 assignment answer, Q-1: Read the Data)
   Byte-identical DATA step from the original file; a PROC PRINT is appended
   so the run produces a visible listing (the source file builds the JOB
   dataset but does not print it). */
Data JOB;
Input Name $ Salary Age Desc $ City $ Country $;
Cards;
Neha 30000 32 MD Bangalore India
Sita 40000 23 Teacher Mumbai India
San 32000 32 HR London UK
Raja 32000 32 HR London UK
run;

proc print data=JOB;
run;
