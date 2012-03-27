.onAttach <-
function (...)  {
  packageStartupMessage(paste(
       c("As of version 0.6 of DAAGbio, the '.spot' files in the",
      "inst/doc subdirectory are stored in a compressed format.",
      "The vignette marray-notes.pdf demonstrates the use of",
      "the limma function read.maimages() to read these files.",
      "This requires R version 2.10.0 or later."), collapse="\n"))
}
