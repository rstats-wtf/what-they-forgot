# What They Forgot to Teach You About R

Shortlinks and downloads:

  * [rstd.io/forgot](https://rstd.io/forgot) points here
  * [rstd.io/forgot_gitter](https://rstd.io/forgot_gitter) is our chat room (ignore if you are overstimulated already)
  * The [issues](https://github.com/jennybc/what-they-forgot/issues) here are a great place to record gotchas we encountered, good sidebar discussions, etc. that should be considered in future workshops.
  
Day 1, morning

  * [Download PDF of of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day1_slides1_projects-and-paths.pdf) re: projects, file system operations, file names
  * `usethis::use_course("rstd.io/forgot_1")` downloads first challenge re: exploring your package libraries
    - If you have trouble connecting to DropBox, the same files are here in the directory [`day1_s1_explore-libraries`](day1_s1_explore-libraries)
  *  `usethis::use_course("rstd.io/forgot_2")` downloads second challenge re: working with the filesystem programmatically
    - If you have trouble connecting to DropBox, the same files are here in the directory [`day1_s2_copy-files`](day1_s2_copy-files)

Day 1, afternoon

  * [Download PDF of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day1_slides2_git-and-github.pdf) re: Git + GitHub + R/Rmd
  * [Happy Git with R](http://happygitwithr.com)
    - Participants and helpers should use this as primary resource for Git/GitHub setup and troubleshooting
    - This is also the permanent home of many of the activities we worked through, Git/GitHub topics covered, etc.
    - [Issues](https://github.com/jennybc/happy-git-with-r/issues) are welcome here as well re: sections that should be added.
    
Day 2, morning

  * [Download PDF of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day2_slides1_github-search.pdf) re: how to exploit the active R scene on GitHub by Jim Hester
  * General Q & A re: GitHub habits and etiquette.
  * Discuss [issue about updating / reinstalling packages](https://github.com/jennybc/what-they-forgot/issues/4) after updating R. General Q & A re: maintaining one's R installation. Startup files.
    - [GitHub search](https://github.com/search?utf8=✓&q=dotfiles&type=) for dotfile repos!
    - Kevin Ushey blog post on `.Rprofile` [RProfile Essentials](http://kevinushey.github.io/blog/2015/02/02/rprofile-essentials/)
    - Kevin's [etc repo](https://github.com/kevinushey/etc) for dotfiles and the like
    - Shaun Jackman's [dotfiles repo](https://github.com/sjackman/dotfiles)
  * [Download PDF of slides](https://github.com/jennybc/what-they-forgot/raw/master/slides/day2_slides2_project-api.pdf) re: project subdirectories & choreography, a humane API for an analysis, and the here package
    - Link to GitHub repo you will fork, clone, and develop during the challenge: [rstd.io/forgot_3](https://rstd.io/forgot_3)
    - One possible solution (don't peek!) [rstd.io/forgot_4](https://rstd.io/forgot_4)
    
Day 2, afternoon

  * Discuss file and directory naming (was skipped on Day 1 due to time)
  * Download PDF of slides on iterating with purrr *link to come*  
  * Live code demo of purrr
    - [rstd.io/jenny-live-code](https://rstd.io/jenny-live-code)
    - Version at the start (has gaps for challenges) *link coming*
    - Version at the end (everything filled in) *link coming*
  * Prompts for Choose Your Own Adventure *link to come*
  * During Choose Your own Adventure, also assume it's "office hours" w/ Jenny, Kirill, Lucy, Jim. Show us your weird R stuff!
  * Examples that draw on many workshop themes
    - Clickable gallery of [O'Reilly book cover parodies](https://github.com/jennybc/orly-full-res#readme), forked from [thepracticaldev/orly-full-res](https://github.com/thepracticaldev/orly-full-res)
    - [Fattest cat](https://github.com/jennybc/fattest-cat), finds the fattest cat currently up for adoption as SF SPCA. Translated from the [original Javascript](https://github.com/lexiross/fattest-cat).
  * Wrap up *not sure if I'll post slides, most will be repeats*

[![Gitter chat](https://badges.gitter.im/what-they-forgot/Lobby.svg)](https://gitter.im/what-they-forgot/Lobby) <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.


## Installing the fs package on macOS

fs is a new package from Jim Hester that for managing files and
directories that I will use throughout the workshop.

The CRAN mirrors are currently having trouble with macOS binaries. If
you are on mac you can install the fs package with a binary that we
built:

```
url <- "https://github.com/jennybc/what-they-forgot/blob/master/fs_1.1.0.tgz?raw=true"
install.packages(url, repos = NULL, type = "binary")
```


## Fixing slow CRAN downloads

We have set up a local CRAN mirror for the RStudio conference. All
requests to `https://cran.rstudio.com/` are intercepted and redirected
to this local mirror in order to improve download speeds. Make sure
your default CRAN repo is set to the RStudio mirror (this is the
default if you use RStudio):

```
options(repos = c(CRAN = "https://cran.rstudio.com/"))
```
