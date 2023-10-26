#' RNA string to codons
#'
#' @param rna_string Paste the name of the RNA string here.
#' @param start Choose start point for translation in RNA string. Default = 1.
#'
#' @return output. Codons corresponding to the RNA string.
#' @export
#'
#' @examples
#' sequence <- "GUACUCUUCCAAGAUCUACUAGCUAGCUAUAGGG"
rna_to_codons <- function(rna_string, start = 1){
  n_bases <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = n_bases-3+1, by = 3),
                      last = seq(from = 3+start-1, to = n_bases, by = 3))
  return(codons)
}

