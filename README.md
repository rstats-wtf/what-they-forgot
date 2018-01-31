# What They Forgot to Teach You About R

Shortlinks and downloads:

  * [rstd.io/forgot](https://rstd.io/forgot) points here
  * [rstd.io/forgot_gitter](https://rstd.io/forgot_gitter) is our chat room (ignore if you are overstimulated already)
  * [Download PDF of first set of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day1_slides1_projects-and-paths.pdf) re: projects, file system operations, file names
  * `usethis::use_course("rstd.io/forgot_1")` downloads first challenge re: exploring your package libraries
    - If you have trouble connecting to DropBox, the same files are here in the directory [`day1_s1_explore-libraries`](day1_s1_explore-libraries)
  *  `usethis::use_course("rstd.io/forgot_2")` downloads second challenge re: working with the filesystem programmatically
  * [Download PDF of second set of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day1_slides2_git-and-github.pdf) re: Git + GitHub + R/Rmd
  * [Happy Git with R](http://happygitwithr.com) participants and helpers should use this as primary resource for Git/GitHub setup and troubleshooting

[![Gitter chat](https://badges.gitter.im/what-they-forgot/Lobby.png)](https://gitter.im/what-they-forgot/Lobby) <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.


## Installing the `fs` package on macOS

fs is a new package from Jim Hester that for managing files and
directories that I will use throughout the workshop.

The CRAN mirrors are currently having trouble with macOS binaries. If
you are on mac you can install the `fs` package with a binary that we
built:

```
url <- "https://github.com/jennybc/what-they-forgot/blob/master/fs_1.1.0.tgz?raw=true"
install.packages(url, repos = NULL, type = "binary")
```
