#' translate
#'
#' @param codon vector of codons representing an RNA sequence
#'
#' @return returns collapsed amino acid sequence as a string
#' @export
#'
#' @examples
#' AAs <- c("GCG", "AUU", "GUU", "GAU", "UUU", "CGC", "CCU", "UCG", "AAC", "AUC", "GUU", "UAA")
#' translate(AAs)
translate <- function(codon){
  aa_seq <- paste0(codons[codon], collapse = "")
  return(aa_seq)
}

