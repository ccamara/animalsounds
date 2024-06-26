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
animal_sounds <- function(animal, sound = NULL) {

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }

  if (!rlang::is_null(sound) && !rlang::is_character(sound, n = 1)   ) {
    cli::cli_abort(
      c("{.var sound} must be a single string or empty!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead."),
      class = "error_not_single_string"
    )
  }

  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound.")
  } else(
    paste0("The ", animal, " goes ", sound, "!")
  )



}
