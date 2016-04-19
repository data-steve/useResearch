#' Activates Any Function with User Research Capability
#'
#' Activates Any Function with User Research Capability.
#'
#' @param fun the function to be activated
#' @export

pingr  <- function(fun){

  fun_name <- as.character(substitute(fun))
  .meta(fun_name)

  bod <- body(fun)
  if (trimws(as.character(bod[[1]])) == "{"){
    body(fun)[[2]] <- call(".ping", post_content = fun_name)
    if (length(bod) > 1) body(fun)[3:(1+length(bod))] <- bod[-1]
  } else {
    body(fun)[[1]] <- as.name('{')
    body(fun)[[2]] <- call(".ping", post_content = fun_name)
    body(fun)[[3]] <- bod
  }
  fun
}
