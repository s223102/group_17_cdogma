usethis::use_package("stringr")
usethis::use_package("ggplot2")

#' count_aa
#'
#' @param aa_seq Input is a string of amino acids in one letter code format.
#'
#' @return This function returns a visualization of the amino acid composition of the input sequence
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#' @export
#'
#' @examples
#'aa_seq = "MGTCCEYKLDMPRQQCLKYWALKDRTYNV"
#'count_aa(aa_seq)
count_aa <- function(aa_seq){
  # Split the string into a vector of character/strings used for
  split_aa <- aa_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # make a count matrix
  counts <- sapply(split_aa, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) |>
    as.data.frame()

  # add column and rownames to matrix
  colnames(counts) <- c("Counts")
  counts[["Amino Acid"]] <- rownames(counts)

  # visualize data in a bar chart to show difference abundance of amino acids
  barchart <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = `Amino Acid`, y = Counts, fill = `Amino Acid`)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none") +
    ggplot2::labs(x = "Amino Acid", y = "Count", title = "Count of Amino Acids")
  return(barchart)
}
