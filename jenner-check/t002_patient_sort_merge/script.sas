/* Source: "Chapter 13 assignment - SAS Software.docx", Q-2 answer
   (Sort and merge two datasets by ID using BY ID; print and verify Age and
   Gender are matched correctly).
   Data steps and PROC SORT / merge statements transcribed byte-for-byte
   from the answer in the assignment doc (including "merge a b;" using the
   original, unsorted datasets exactly as the author wrote it -- the PROC
   SORT steps are kept as written even though their outputs new/new1 aren't
   the merge inputs), with the two source datasets' datalines (a: ID+Age,
   b: ID+Gender) and a PROC PRINT appended to make the merged result visible. */
data a;
input ID $ Age;
datalines;
101 25
102 30
;
run;

data b;
input ID $ Gender $;
datalines;
101 M
102 F
;
run;

proc sort data = a out = new;
by ID;
run;

proc sort data = b out = new1;
by ID;
run;

Data new2;
merge a b;
by ID;
run;

proc print data=new2;
run;
