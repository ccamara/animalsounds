## code to prepare `farm_animals` dataset goes here

farm_animals <- data.frame(
  animal = c("dog", "cat", "pig", "frog", "elephant"),
  sound =c("woof", "meaow",  "oink", "croack", "eeee")
)

usethis::use_data(farm_animals, overwrite = TRUE)
