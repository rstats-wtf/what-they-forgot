## Outline of how I would copy the .R files from, e.g.,
## ~/Desktop/day1_s1_explore-libraries
## to the current project

## Take 1: using base functions to work with the file system
## Take 2: using function from the fs package
## pick the one that interests you most

## Base file system functions ----

## store the path to the other project
## try to practice "safe file paths" -- but first, just make it work!
##   * good: path is relative to your home directory
##   * good: path is relative to current directory = this project directory
##   * not so bad: path is absolute
## use RStudio's autocomplete to help you avoid typos
## file.path() could be handy

## use dir.exists() to check you have successfully stored the path

## list files in the other project
## list.files() will be handy

## now limit to .R files
## use the `pattern` argument

## now get them as absolute paths
## use the `full.names` argument

## have the right file paths?
## store them in an object, e.g. from_files

## make the file names you want to use here in this project, e.g. to_files
## basename() will be handy

## copy the files
file.copy(from_files, to_files)

## list the files here (and look in file browser) to verify success

## Using the fs package ----

## install.packages("fs")
library(fs)

## store the path to the other project
## try to practice "safe file paths" -- but first, just make it work!
##   * good: path is relative to your home directory
##   * good: path is relative to current directory = this project directory
##   * not so bad: path is absolute
## use RStudio's autocomplete to help you avoid typos
## path_home() might be handy

## use dir_exists() to check you have successfully stored the path

## list files in the other project
## dir_ls() and dir_info() are handy

## now limit to .R files
## use the `glob` or `regex` argument

## make sure they are absolute paths

## have the right file paths?
## store them in an object, e.g. from_files

## make the file names you want to use here in this project, e.g. to_files
## path_file() will be handy

## copy the files and store the result
out <- file_copy(from_files, to_files)

## inspect the result: notice that it's handy to see the actual paths that were
## copied to!

## list the files here (and look in file browser) to verify success
## dir_ls() and dir_info() are handy
