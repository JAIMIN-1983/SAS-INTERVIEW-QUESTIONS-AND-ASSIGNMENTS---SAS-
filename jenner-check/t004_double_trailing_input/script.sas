/* Source: "Chapter 20 & 21 assignment - SAS Software.docx", Q-1 answer
   ("Double Trailing method @@" - reading two logical records per input
   line with the @@ line-hold specifier).
   DATA/INPUT/Cards statements and inline data transcribed verbatim from
   the answer in the assignment doc; a PROC PRINT is appended to make the
   parsed result visible. */
Data new;
Input Name $ Age City $ Salary @@;
Cards;
Mohan 26 Machalipatnam 25000 prasad 27 Razol 28000
Moksha 28 Machalipatnam 40000 bharadwaj 26 Kottagudam 25000
uma 25 Amalapuram 35000 pavan 27 Vijayawada 33000
run;

proc print data=new;
run;
