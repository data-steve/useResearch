#' Creates Code to Activate Multiple Functions and Copies to Clipboard
#'
#' Creates Code to Activate Multiple Functions and Copies to Clipboard.
#'
#' @param url the url of the google form to be pinged
#' @param \ldots the function(s) to be activated
#' @export
#' @examples
#' \dontrun{
#' batch_process(url = "dummy_url", "fun1", "fun2")
#' # the output is already copied to clipboard on most systems
#' }
batch_process <- function(url, ...){
  if(missing(...)) {
    stop("please insert functions to be activated")
  }
  code <- paste0(list(...)
                 , " <- useResearch::pingr("
                 , list(...)
                 , ", url="
                 , shQuote(url)
                 , ")")
  clipr::write_clip(code)
  cat(paste(code, collapse="\n"))
}
