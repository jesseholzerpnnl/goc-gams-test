$title write_solution_ctg
$ontext
write solution2.txt file for
contingency solution values
new style with ctg as outer loop
$offtext

$if not set solution2 $set solution2 solution2.txt

file solution2 /'%solution2%'/;
solution2.ap = 0;
put solution2;
putclose;
solution2.ap = 1;

loop(k$ctg(k),
  put solution2;
  put '--contingency: ' k.tl:0 /;
  put '--bus section' /;
  put 'I, VM, VA' /;
  loop(i$Bus(i),
    put
      i.tl:0 ', '
      busCtgVoltMagSol(i,k):0:10 ', '
      busCtgVoltAngSol(i,k):0:10 /;
  );
  put '--generator section' /;
  put 'I, ID, Q' /;
  loop((i,j)$Gen(i,j),
    put
      i.tl:0 ', '
      j.tl:0 ', '
      genCtgPowImagSol(i,j,k):0:10 /;
  );
  put '--switched shunt section' /;
  put 'I, B' /;
  loop(i$Swsh(i),
    put
      i.tl:0 ', '
      swshCtgAdmImagSol(i,k):0:10 /;
  );
  put '--area section' /;
  put 'AREA, DELTA' /;
  loop(i$Area(i),
    put
      i.tl:0 ', '
      areaCtgPowRealChangeSol(i,k):0:10 /;
  );
  putclose;
);
