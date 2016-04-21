#' Copies Template for User Research Process
#'
#' Copies Template for User Research Process.
#'
#' @param rdir the directory to copy the template to
#' @param open logical var to indicate whether to open file for editing
#' @export
#' @examples
#' \dontrun{
#' add_template()
#' }
add_template <- function(rdir = "./R", open = TRUE) {
  file.copy(
    system.file("templates/zzz_useResearch.R", package = "useResearch")
    , rdir)
  if (open) file.edit(
  	file.path(rdir,'zzz_useResearch.R')
  	)
}
