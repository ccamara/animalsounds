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
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
