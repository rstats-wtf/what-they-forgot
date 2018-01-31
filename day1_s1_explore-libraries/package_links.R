library(tidyverse)
library(stringr)
library(igraph)
library(ggraph)

# Tibble of installed packages
inst_packages <- installed.packages() %>% as_tibble()

# Take a look at what we've got in LinkingTo; seems like a comma separated string
inst_packages$LinkingTo[1:50]

# For now, take just the first link and remove trailing commas
inst_packages <- inst_packages %>%
  mutate(
    linking_to = str_split(LinkingTo, " ") %>% map_chr(first) %>% gsub(",", "", .)
)

# Create the links between packages and their first LinkingTo package
package_links <- inst_packages %>%
  drop_na(linking_to) %>%
  select(Package, linking_to) %>%
  as_tibble() %>%
  igraph::graph_from_data_frame()

# Make the graph!
link_graph <- ggraph::ggraph(package_links, layout = "fr") +
  geom_edge_link(alpha = 0.5) +
  geom_node_point(color = "blue", size = 5, alpha = 0.5) +
  geom_node_text(aes(label = name), repel = TRUE) +
  theme_void() +
  ggtitle("Packages LinkingTo other packages")

link_graph

