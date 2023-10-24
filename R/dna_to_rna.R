#' dna_to_rna
#'
#' @param seq DNA sequence input
#'
#' @return reverse_seq DNA coding sequence input returned as RNA sequence
#' @export
#'
#' @examples
#' sequence <- "GATCGATCGTAGCTAGCTGACTG"
#' dna_to_rna(sequence)
dna_to_rna <- function(seq){
  reverse_seq <- gsub("T", "U", seq)
  return(reverse_seq)
}

