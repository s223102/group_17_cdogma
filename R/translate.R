#' translate
#'
#' @param vector_of_codons vector of codons representing an RNA sequence
#'
#' @return returns collapsed amino acid sequence as a string
#' @export
#'
#' @examples
#' AAs <- c(M, A, G, G, T, Y, Y, P, I, K, L, M)
#' translate(AAs)
translate <- function(vector_of_codons){
  aa_seq <- paste0(codons[vector_of_codons], collapse = "")
  return(aa_seq)
}
