getPubchemCID<-function(getSMILES)
{
  url<-"https://pubchem.ncbi.nlm.nih.gov/rest/pug/compound/smiles/"

  out<-tryCatch({jsonlite::fromJSON(paste0(url,getSMILES, "/cids"))} ,error = function(x) {return(NA)})

  return(tryCatch({out[[1]]$CID},error = function(x) {return(NA)}))

}

