## First attempt: Just get it to work ----

list.files("~/Desktop/day1_s1_explore-libraries")

list.files("~/Desktop/day1_s1_explore-libraries", pattern = "\\.R$")

list.files(
  "~/Desktop/day1_s1_explore-libraries",
  pattern = "\\.R$",
  full.names = TRUE
)

from_files <- list.files(
  "~/Desktop/day1_s1_explore-libraries",
  pattern = "\\.R$",
  full.names = TRUE
)

(to_files <- basename(from_files))

file.copy(from_files, to_files)

list.files()

## Clean it out, so we can refine ----
file.remove(to_files)
list.files()

## Copy again, tighter code ----
from_dir <- file.path("~", "Desktop", "day1_s1_explore-libraries")
from_files <- list.files(from_dir, pattern = "\\.R$", full.names = TRUE)
to_files <- basename(from_files)
file.copy(from_files, to_files)
list.files()

## Clean it out, so we can use fs ----
file.remove(to_files)
list.files()

## Copy again, using fs ----
library(fs)
(from_dir <- path_home("Desktop", "day1_s1_explore-libraries"))
(from_files <- dir_ls(from_dir, glob = "*.R"))
(to_files <- path_file(from_files))
(out <- file_copy(from_files, to_files))
dir_ls()
dir_info()

## Sidebar: Why does Jenny name files this way? ----
library(tidyverse)
ft <- tibble(files = dir_ls(glob = "*.R"))
ft

ft %>%
  filter(str_detect(files, "explore"))

ft %>%
  mutate(files = path_ext_remove(files)) %>%
  separate(files, into = c("i", "topic", "flavor"), sep = "_")

dirs <- dir_ls(path_home("Desktop"), type = "directory")
(dt <- tibble(dirs = path_file(dirs)))
dt %>%
  separate(dirs, into = c("day", "session", "topic"), sep = "_")

## Principled use of delimiters --> meta-data can be recovered from filename

## Clean it out, so we reset for workshop ----
file_delete(to_files)
dir_ls()
