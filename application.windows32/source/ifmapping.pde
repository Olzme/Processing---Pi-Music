void ifmapping() {
  
   TableRow row = data.getRow(rowIdx);
  int digit = row.getInt(colIdx);  // idx --> index 
  float Note =digit;
  
text("Current placement digit of PI is " + digit,410,25);

  if (Note == 0) {
  CMajorPentscaleNote = c3;
  DMajorPentscaleNote = d3;
  EMajorPentscaleNote = e3;
  FMajorPentscaleNote =f3;
  GMajorPentscaleNote= g3;
  AMajorPentscaleNote= a3;
  BMajorPentscaleNote= b3;

}
else if (Note ==1) {
  CMajorPentscaleNote = d3;
  DMajorPentscaleNote = e3;
  EMajorPentscaleNote = fS3;
  FMajorPentscaleNote = g3;
  GMajorPentscaleNote = a3;
  AMajorPentscaleNote= b3;
  BMajorPentscaleNote= cS4;

}
else if (Note ==2) {
  CMajorPentscaleNote = e3;
  DMajorPentscaleNote = fS3;
  EMajorPentscaleNote = gS3;
  FMajorPentscaleNote = a3;
  GMajorPentscaleNote =b3;
  AMajorPentscaleNote= cS4;
  BMajorPentscaleNote= dS4;

}
else if (Note ==3) {
  CMajorPentscaleNote = g3;
  DMajorPentscaleNote = a3;
  EMajorPentscaleNote = b3;
  FMajorPentscaleNote = c4;
  GMajorPentscaleNote =d4;
  AMajorPentscaleNote= e4;
  BMajorPentscaleNote= fS4;

}
else if (Note ==4) {
    CMajorPentscaleNote = a3;
    DMajorPentscaleNote = b3;
    EMajorPentscaleNote = cS4;
    FMajorPentscaleNote = d4;
    GMajorPentscaleNote =e4;
    AMajorPentscaleNote= fS4;
    BMajorPentscaleNote= gS4;

}
else if (Note ==5) {
  CMajorPentscaleNote = c4;
  DMajorPentscaleNote = d4;
  EMajorPentscaleNote = e4;
  FMajorPentscaleNote = f4;
  GMajorPentscaleNote =g4;
  AMajorPentscaleNote= a4 ;
  BMajorPentscaleNote= b4;

}
else if (Note ==6) {
  CMajorPentscaleNote = d4;
  DMajorPentscaleNote = e4;
  EMajorPentscaleNote = fS4;
  FMajorPentscaleNote = g4;
  GMajorPentscaleNote =a4;
  AMajorPentscaleNote= b4 ;
  BMajorPentscaleNote= cS5;


}
else if (Note ==7) {
  CMajorPentscaleNote = e4;
  DMajorPentscaleNote = fS4;
  EMajorPentscaleNote =gS4;
  FMajorPentscaleNote = a4;
  GMajorPentscaleNote =b4;
  AMajorPentscaleNote= cS5 ;
  BMajorPentscaleNote= dS5;


}
else if (Note ==8) {
  CMajorPentscaleNote = g4;
  DMajorPentscaleNote = a4;
  EMajorPentscaleNote=b4;
  FMajorPentscaleNote =c5;
  GMajorPentscaleNote =d5;
  AMajorPentscaleNote= e5 ;
  BMajorPentscaleNote= fS5;


}
else if (Note ==9) {
  CMajorPentscaleNote = a4;
  DMajorPentscaleNote = b4;
  EMajorPentscaleNote=cS5;
  FMajorPentscaleNote = d5;
  GMajorPentscaleNote =e5;
  AMajorPentscaleNote= fS5 ;
  BMajorPentscaleNote= gS5;


}

}