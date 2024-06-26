#' Prints what a given animal says
#'
#' Prints what the animal says *(the sound it makes)* in the console, using
#' [`paste0()`]
#'
#' @param animal a string containing an animal name
#' @param sound  a string containing the sound that the animal makes
#'
#' @return a printed versiib
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.")
    )
  }

  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.")
    )
  }


  paste0("The ", animal, " goes ", sound, "!")
}
