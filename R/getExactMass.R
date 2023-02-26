GetSmilesToEM<-function(getSMILES)
{
  For<-tryCatch({RChemMass::MolFormFromSmiles.rcdk(getSMILES)},error=function(cond){return(NA)})
  EM<-tryCatch({Rdisop::getMolecule(For)},error=function(cond){return(NA)})
  EM1<-tryCatch({EM$exactmass},error=function(cond){return(0)})
  return(EM1)
}

