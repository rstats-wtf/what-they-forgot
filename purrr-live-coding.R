library(tidyverse) ## includes purrr, which is our main attraction today
library(repurrrsive)

## Completely frivolous playing around with different idioms
## for iteration
## Will wake everyone up and focus on ITERATION!

## https://github.com/brooke-watson/BRRR
## devtools::install_github("brooke-watson/BRRR")
library(BRRR)

skrrrahh(2)
skrrrahh(35)
skrrrahh("bigsean5")

for(i in 1:5) {
  Sys.sleep(0.75)
  skrrrahh(i)
}

walk(1:5, ~{Sys.sleep(0.75); BRRR::skrrrahh(.x)})

f <- function(sound, sleep = 0.75) {
  Sys.sleep(sleep)
  skrrrahh(sound)
}

walk(30:35, f)

## Hello Game of Thrones characters + list inspection ----

?got_chars

# ick
str(got_chars)

View(got_chars)
# use the object viewer and it's code generation to get ...
got_chars[[9]][["name"]]

# take more control of str()
str(got_chars[[9]])
str(got_chars, max.level = 1)
str(got_chars, list.len = 3)

## revisit slides to introduce map() and map_*() friends

## Shortcuts to get elements by name or position ----

## map(YOUR_LIST, YOUR_FUNCTION)
## map(YOUR_LIST, STRING)
## map(YOUR_LIST, INTEGER)

map(got_chars, "name")
map(got_chars, 3)

## this is how we would do in base (vs. purrr)
lapply(got_chars, function(x) x[["name"]])
lapply(got_chars, function(x) x[[3]])

## Exercises

## Use names() to get the names of the list elements associated with a single
## character.
## What's the position of the "playedBy" element?
## Use string and position shortcuts to extract playedBy for all characters.

## Type-specific map w/ string or position shortcuts ----
map_chr(got_chars, "name")
## there's also map_int(), map_lgl(), map_dbl()

## Exercises

## Get an integer vector of character "id"s, using the string shortcut.

## Get the same integer vector again, using the integer position shortcut.

## Get the same vector again, using map() and then flatten_int()

## Inspect the info for one specific character (just pick one).
## Which element is logical?
## What's its name?
## What's its position?
## Use map_lgl() to get a logical vector of these across all characters.

## Extract multiple things ----
got_chars[[3]][c("name", "culture", "gender", "born")]

x <- map(got_chars, `[`, c("name", "culture", "gender", "born"))
x
View(x)

## Inspect the info for one specific character (just pick one).
## What's the integer position of these elements:
## "name", "gender", "culture", "born", and "died".
## Map `[` over characters by INTEGER POSITIONS instead of name.

## Extract multiple things into data frame rows ----
map_dfr(got_chars, `[`, c("name", "culture", "gender", "id", "born", "alive"))

## Try to do similar with "name" and "titles".
## What happens? Why? Can you think of another way to get that job done?

## go back to slides to remind ourselves .f can be more general

## Beyond the string and integer shortcut ----

## modelling a development workflow ----
library(glue)

## practice with a fake, simple example you control
glue_data(
  list(name = "Jenny", born = "in Atlanta"),
  "{name} was born {born}."
)

## practice with a real example in your data
glue_data(got_chars[[2]], "{name} was born {born}.")

## practice with a real, different example in your data
glue_data(got_chars[[9]], "{name} was born {born}.")

## drop this code into map()
map(got_chars, ~ glue_data(.x, "{name} was born {born}."))

## use the simplifying form map_chr()
map_chr(got_chars, ~ glue_data(.x, "{name} was born {born}."))

## end workflow modelling

## All the ways to specify .f ----
aliases <- set_names(
  map(got_chars, "aliases"),
  map_chr(got_chars, "name")
)
(aliases <- aliases[c(1, 13, 17)])

## map(YOUR_LIST, YOUR_FUNCTION)

## .f = a pre-existing function (custom, in this case)
my_fun <- function(x) paste(x, collapse = " | ")
map(aliases, my_fun)

## .f = anonymous function
map(aliases, function(x) paste(x, collapse = " | "))

## .f = pre-existing function, with extra args passed through `...`
map(aliases, paste, collapse = " | ")

## .f = anonymous function, via a ~ formula
map(aliases, ~ paste(.x, collapse = " | "))

## Exercises

## Each character can be allied with one of the houses (or with several or with
## zero). These allegiances are held as a vector in each character’s component.

## Create a list of allegiances that holds the characters’ house affiliations.
allegiances <- map(got_chars, "allegiances")
## Create a character vector nms that holds the characters’ names.
nms <- map_chr(got_chars, "name")
## Apply the names in nms to the allegiances list via set_names.
names(allegiances) <- nms
##
## how many allegiances does each character have?
map_int(allegiances, length)
##
## Form a logical vector that reports if this character is allied with House Targaryen.
map_lgl(allegiances, ~ any(grepl("Targaryen", .x)))

## go back to slides for some visual inspiration about map2() and pmap()
## (no code examples here, but they do come up in real life)
## also intro to putting lists in a data frame

## list-columns = lists in a data frame ----
gt <- tibble(
  name = map_chr(got_chars, "name"),
  houses = map(got_chars, "allegiances")
)
View(gt)

## KEY IDEA: use map() inside tibble(), mutate(), filter(), etc.

## sidebar: revel in enframe <--> deframe
## named list <--> two column tibble
gt
deframe(gt)
enframe(deframe(gt))

gt %>%
  mutate(n_houses = map_int(houses,length)) %>%
  filter(n_houses > 1) %>%
  unnest()

## Exercises

## Make a tibble that has 1 variable, stuff, that is got_chars:
df <- tibble(
  stuff = got_chars
)

## Create 3 new, regular variables in this data frame that are
## simple atomic vectors by extracting and/or computing on the
## stuff in the list. Ideas:
##   * name is a great variable to have!
##   * Other good simple character variables: culture, playedBy
##   * id is a simple integer candidate, but boring/meaningless
##   * A character list-column could be made from titles, aliases,
##     allegiances, povBooks.
##   * An integer vector can be made by taking length of ^^ above.
##   * Get rid of the list-column(s) and admire your new data frame
