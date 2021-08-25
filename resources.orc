
 opcode Resources, iS[], S
Sext xin
Sall[] directory "resources", Sext
iN lenarray Sall
xout iN, Sall
 endop
 
 
   opcode resourcesBox, iS[], SSp
  Sext, Schan, idefault xin
  Sext strcat ".", Sext
  Spopcode sprintf "populate(\"*%s\", \"resources\")", Sext 
  cabbageSet Schan, Spopcode
  iN, Sres[] Resources Sext
  cabbageSetValue Schan, idefault
  xout iN, Sres
   endop

