getMolecularFormula<-function(function(getSMI)
{
url<- "https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/SMILES/"
out<-tryCatch({jsonlite::fromJSON(paste0(url,getSMI, "/JSON"))} ,error = function(x) {return(NA)})
prop.names  <-tryCatch({out$PC_Compounds$props[[1]][[1]]},error = function(x) {return(NA)})
prop.values <- tryCatch({out$PC_Compounds$props[[1]][[2]]},error = function(x) {return(NA)})
MF<-tryCatch({prop.values[17,"sval"]},error = function(x) {return(NA)})
return(MF)
}
