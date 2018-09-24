# What They Forgot to Teach You About R

<https://www.rstudio.com/workshops/what-they-forgot-to-teach-you-about-r/>

## Main objectives:

  * Project-oriented mentality
  * Good hygiene around paths
  * Better understanding of R installation and package library
  * How/why version control
  * How to use dev packages and make use of R / package source
  * Iteration (currently an isolated topic, so let's discuss)
  * Meta goal: How to get yourself unstuck! Let's assume things will wrong. Now what? 

## Overview

The order below is still wonky, as is time allocated to various things.

| Unit          | What | Who |
|---------------|------|-----|
| Day 1, a.m. 1 | Admin<br>Deep Thought: be organized<br>Meet instructors & neighbors<br>Exercise: explore your installed packages<br>Deep Thought: Work in a project, fresh starts | Jenny    |
| Day 1, a.m. 2 | Exercise: create a project, harden earlier exploration into 2 or more scripts, force some file system work<br>Deep Thought: Practice "safe paths"<br>Moar exercise<br> Deep Thought: Naming things| Jenny |
| Day 1, p.m. 1 | Deep Thought: Version control is about managing change, not backup<br>Fundamentals of Git/GitHub + R/Rmd<br>Guided activity: new project, GitHub first, practice basic Git/GitHub ops with Rmd -> md work based on morning's example | Jenny |
| Day 1, p.m. 2 | Activity: various combos of getting new/existing stuff into Git/GitHub and of getting GitHub stuff onto your machine<br>Remotes, branches (understand, query, modify tracking branches) | Jenny, Jim |
| Day 2, a.m. 1 | R: Startup & how to maintain/upgrade R & pkgs<br>Activity: something about `.Rprofile` and `.Renviron`<br> Debugging start | Jim |
| Day 2, a.m. 2 | More debugging, eventually morphing into GitHub search and package source navigation/appreciation | Jim    |
| Day 2, p.m. 1 | Iteration with purrr (include making a README.Rmd programatically) | Jenny |
| Day 2, p.m. 2 | Practical Git/GitHub workflows: Branch as safety net & method of time travel, resets, merge conflicts, amending, interactive rebase to edit commit message/change order of commits, staging specific lines/chunks, models for collaborative work (multiple people working in same repo w/ or w/o PRs vs. fork and pull), pull & rebase, cherry pick, closing issue via commit/PR | Jim/Jenny |

Notes:

Jenny's debugging wish list: browser(), traceback(), options(error = recover)

## Mechanics:

  * The usual setup instructions, perhaps with an upgrade re: git2r/usethis readiness.
  * Use gitter again to facilitate real-time conversations and link sharing.
  * Elicit questions people think are of general interest early on Day 1, probably via GitHub issue (also a nice early GH task). We answer/discuss a subset of the most upvoted things on Day 2.
  * Provide some structure for the highly specific "office hour" type of consultations.
  * Think about: physical setup, groups or pairs (physical proximity or not, eg for a gh activity), sticky notes, 2 projectors?
  * How to prepare this content so it's easy to link to and use in other parts of life? I.e. don't lock extremely useful content only into a massive slide deck.

## Live notes from tidyverse meeting

namespaces and conflicts, the conflicted package

reprex as a way to at least realize that some problems are peculiar to your R session, probably because it's been running since December

R processes as livestock and not pets

in the Startup section, explain dotfile vocab and how to see them and edit them (different OSes, in RStudio)

GitHub PAT is good example of something we could put in `.Renviron`

Package appreciation:

  * Managing dev version vs CRAN version. How to even tell if your problem might be related to version of package. Just the idea of trying to repro with a different version.
  * Difficult issue for which we don't have a great answer: where to let the dev versions of stuff go.
  * When in doubt, flee back to CRAN versions.
  * session info: how to see what's installed and where it came from (sessioninfo::package_info("rlang"))
  * Alert Windows people to their special problems with borked installations of pkgs with compiled code.
  * People will ask about the packages tab in RStudio. The Update button.
  * People might ask about Packrat.
  
How often do you update R itself and update your packages? What is your process?

How to install a specific version of a package? Especially something that is not the current CRAN version? Especially on Windows.

We should help everyone prepare their system to build packages. Rtools, Xcode command line tools.

Misleading error messages. foo is not available for R 3.x.x but it's really a typo (foo instead of foot) or lack of CRAN/internet access.

Git/GitHub stuff

  * Shortcuts for linkiness, e.g. an issue or PR or SHA in same repo. Other links you can get ahold of and that will be nicely displayed.
  * You'll be more willing to commit often, if you're also willing to amend.
  * In the amend lifestyle, either don't push or realize you will have to force push.
  * When is it OK to force push. What happens if you force push when you should not.
  * How to *actually* explore your stuff at a previous version. If you just want to look, GitHub is great. But what if you need to use the stuff? Then you have to time travel locally. Creating and checking out a branch is best way (no griping about Detached Head, no risk of making commits that are hard to access).
  * How to submit a PR.
  * Deleting branch, locally and remotely.

Debugging

  * warn = 1 vs warn = 2, related to error = recover
  * Generally tips about stuff that's good to have in `.Rprofile`. And you might need to periodically comment / decomment.

### Outline more conducive to editing

Day 1, a.m. 1 (Jenny)

  * Admin
  * Deep Thought: be organized
  * Meet instructors & neighbors
  * Exercise: explore your installed packages
  * Deep Thought: Work in a project, fresh starts
  
Day 1, a.m. 2 (Jenny)

  * Exercise: create a new project, harden earlier exploration into 2 or more scripts, force some file system work
  * Deep Thought: Practice "safe paths"
  * Moar exercise (?)
  * Deep Thought: Naming things (?)

Day 1, p.m. 1

  * Deep Thought: Version control is about managing change, not backup
  * Fundamentals of Git/GitHub + R/Rmd
    - Guided activity: new project, GitHub first
    - Practice basic Git/GitHub ops with R or Rmd -> md work based on morning's example. Ulterior motive: showing importance of md (vs html) on GitHub.
    
Day 1, p.m. 2

  * Activity: various combos of getting new/existing stuff into Git/GitHub and of getting GitHub stuff onto your machine (?)
  * Remotes, branches (understand, query, modify tracking branches)
  
Day 2, a.m. 1

  * R: Startup & how to maintain/upgrade R & pkgs
  * Activity: something about `.Rprofile` and `.Renviron`
  * Debugging start
  
Day 2, a.m. 2 

  * More debugging, eventually morphing into GitHub search and package source navigation/appreciation
  
Day 2, p.m. 1 (Jenny)

  * Iteration with purrr (include making a README.Rmd programatically)
  
Day 2, p.m. 2 

  * Practical Git/GitHub workflows
