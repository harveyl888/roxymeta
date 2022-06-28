#' roclet to parse @metadata tag
#'
#' @import roxygen2
#' @export
metadata <- function() {
  roxygen2::roclet("metadata")
}


#' @rdname metadata
#' @importFrom roxygen2 tag_markdown
#' @export
roxy_tag_parse.roxy_tag_metadata <- function(x) {
  roxygen2::tag_markdown(x)
}


#' @rdname metadata
#' @importFrom roxygen2 rd_section
#' @export
roxy_tag_rd.roxy_tag_metadata <- function(x, base_path, env) {
  roxygen2::rd_section('metadata', x$val)
}

#' @rdname metadata
#' @export
format.rd_section_metadata <- function(x, ...) {
  paste0(
    "\\section{Metadata}{\n",
    x$value,
    "}\n"
  )
}


#' @rdname metadata
#' @export
roclet_process.roclet_metadata <- function(x, blocks, env, base_path) {
  x
}


#' @rdname metadata
#' @export
roclet_output.roclet_metadata <- function(x, results, base_path, ...) {
  x
}
