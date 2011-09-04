missingWarn <- function(name){
  if (!file.exists(name)) {
    warning(cat(name, " Is missing", "\n")) 
    return(NULL)
  }else {
    return(name)
  }
}