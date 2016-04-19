#' Copies Template for User Research Process
#'
#' Copies Template for User Research Process.
#'
#' @param rdir the directory to copy the template to
#' @export
#' @examples
#' \dontrun{
#' add_template()
#' }
add_template <- function(rdir = "./R") {
  file.copy(
    system.file("templates/zzz_useResearch.R", package = "useResearch")
    , rdir)
}
