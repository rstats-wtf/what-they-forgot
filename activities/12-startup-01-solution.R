# Create a GitHub PAT
# Hint: use the usethis package
usethis::browse_github_pat()

# Add it to .Renviron
# Hint: use the usethis package
usethis::edit_r_environ()

# Upload your solution as a gist using the GitHub API
# https://developer.github.com/v3/gists/#create-a-gist
# Hint: use the gh package
# Hint: for POST requests, use named parameters, for the files object use a
# named list e.g. `list(filename = list(content = xyz))`

# install.packages("gh")
gh::gh("POST /gists",
  description = "my solution",
  public = TRUE,
  files = list(
    "12-startup-jims.R" = list(content = readr::read_file("activities/12-startup-02-solution.R"))
  )
)
