# What They Forgot to Teach You About R

<https://www.rstudio.com/workshops/what-they-forgot-to-teach-you-about-r/>

Main objectives:

  * Project-oriented mentality
  * Good hygiene around paths
  * Better understanding of R installation and package library
  * How/why version control
  * How to use dev packages and make use of R / package source
  * Iteration (currently an isolated topic, so let's discuss)
  * Meta goal: How to get yourself unstuck! Let's assume things will wrong. Now what? 

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

Mechanics:

  * The usual setup instructions, perhaps with an upgrade re: git2r/usethis readiness.
  * Use gitter again to facilitate real-time conversations and link sharing.
  * Elicit questions people think are of general interest early on Day 1, probably via GitHub issue (also a nice early GH task). We answer/discuss a subset of the most upvoted things on Day 2.
  * Provide some structure for the highly specific "office hour" type of consultations.
  * Think about: physical setup, groups or pairs (physical proximity or not, eg for a gh activity), sticky notes, 2 projectors?
  * How to prepare this content so it's easy to link to and use in other parts of life? I.e. don't lock extremely useful content only into a massive slide deck.
