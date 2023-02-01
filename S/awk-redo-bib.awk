

{p=0} /begin/ {
  print $0; 
  print ""; 
  print "\\setlength{\\baselineskip}{0mm}"; 
  print "\\setlength{\\partopsep}{0mm}"; 
  print "\\setlength{\\parskip}{1mm}"; 
  print "\\setlength{\\parsep}{0mm}"; 
  print "\\setlength{\\listparindent}{0mm}"; 

  
  # (only accept mm)
  # parskim is the key
  # baselineskip is the spacing between each line



  # remzi old
  #print "\\setlength{\\baselineskip}{0mm}"; 
  #print "\\setlength{\\partopsep}{0mm}"; 
  #print "\\setlength{\\parskip}{0mm}"; 
  #print "\\setlength{\\parsep}{0mm}"; 
  #print "\\setlength{\\listparindent}{0mm}"; 


  print ""; 
  p=1;
       } 
       (p==0) {print $0}

