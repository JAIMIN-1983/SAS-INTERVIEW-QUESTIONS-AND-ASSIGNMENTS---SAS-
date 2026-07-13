/* Source: "Chapter 13 assignment - SAS Software.docx", Q-3 answer
   (Many-to-one merge to assign hospital name to each patient visit by ID;
   the doc calls out that ID 103 has a VisitDate but no matching Hospital
   row, so Hospital comes back missing for that ID after the merge).
   DATA/INPUT/format/merge statements and inline data transcribed verbatim
   from the answer in the assignment doc, with a PROC PRINT appended to
   make the merged result -- including the ID 103 missing value -- visible. */
data patients;
input ID $ VisitDate :date9.;
format VisitDate date9.;
datalines;
101 01JAN2024
102 05JAN2024
103 10JAN2024
;
run;

data hospital;
input ID $ Hospital $;
datalines;
101 Apollo
102 Fortis
;
run;

data Combined;
merge patients hospital;
by ID;
run;

proc print data=Combined;
run;
