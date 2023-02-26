getMolecularFormula.rcdk<- function(smiles){

  mol <- tryCatch({rcdk::parse.smiles(smiles)[[1]]},error=function(cond){return(NA)})
  tryCatch({rcdk::convert.implicit.to.explicit(mol)},error=function(cond){return(NA)})
  charge1 <- tryCatch({rcdk::get.total.charge(mol)},error=function(cond){return(NA)})
  formula <- tryCatch({rcdk::get.mol2formula(mol, charge=charge1)},error=function(cond){return(NA)})
  return(tryCatch({formula@string},error=function(cond){return(NA)}))
}
