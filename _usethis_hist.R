# Setup ----

usethis::git_vaccinate()

desc::desc_coerce_authors_at_r()

usethis::use_author(
  given = "Josef",
  family = "Fruehwald",
  email = "jofrhwld@gmail.com",
  role = c("aut","cre", "cph")
)

usethis::use_roxygen_md()

desc::desc_set(
  "Title",
  "Curve Means"
)


desc::desc_set(
  "Description",
  "These are a collection of helper functions to calculate
  averages curve functions given a collection of basis weights.",
  normalize = T
)

usethis::use_gpl3_license()

usethis::use_readme_md()

fs::file_delete(
  here::here("NAMESPACE")
)

roxygen2::roxygenize()

# imports ---

usethis::use_package("R", type = "Depends", min_version = "4.1")
usethis::use_package("gsignal")
