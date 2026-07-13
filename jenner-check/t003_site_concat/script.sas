/* Source: "Chapter 13 assignment - SAS Software.docx", Q-4 answer
   (Use the SET statement to concatenate two site datasets into all_sites).
   Data steps and SET statement transcribed verbatim from the answer in the
   assignment doc, with the two source datasets' datalines (site1, site2)
   and a PROC PRINT appended to make the concatenated result visible. */
data site1;
input SubjID $ Value;
datalines;
A01 10
A02 20
;
run;

data site2;
input SubjID $ Value;
datalines;
B01 15
B02 25
;
run;

data all_sites;
set site1 site2;
run;

proc print data=all_sites;
run;
