usethis::git_vaccinate()

desc::desc_coerce_authors_at_r()

usethis::use_author(
  given = "Josef",
  family = "Fruehwald",
  email = "jofrhwld@gmail.com",
  role = c("aut","cre", "cph")
)

usethis::use_roxygen_md()
devtools::document()
