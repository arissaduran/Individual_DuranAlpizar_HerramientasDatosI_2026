library(tidyverse)
library(readxl)

datos <- read_excel("data/The Book People - Books VS Film Adaptation.xlsx")

tabla <- datos |>
  filter(`Book Title` %in% c(
    "Harry Potter and the philosopher's stone",
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter and the Prisoner of Azkaban",
    "Harry Potter and the Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows",
    "The Lion, the Witch and the Wardrobe",
    "Prince Caspian",
    "The Voyage of the Dawn Treader",
    "Alice's Adventures in Wonderland & Through the Looking-Glass",
    "The Hunger Games",
    "Catching Fire",
    "Mockingjay",
    "Divergent",
    "Insurgent",
    "Allegiant",
    "The Maze Runner",
    "The Scorch Trials",
    "The Death Cure",
    "Dune",
    "The Notebook",
    "The Fault in Our Stars",
    "A Walk to Remember",
    "Me Before You",
    "Dear John",
    "Pride and Prejudice",
    "Twilight",
    "New Moon",
    "Eclipse",
    "Breaking Dawn"
  )) |>
  mutate(
    Genre = case_when(
      `Book Title` %in% c(
        "Harry Potter and the philosopher's stone",
        "Harry Potter and the Chamber of Secrets",
        "Harry Potter and the Prisoner of Azkaban",
        "Harry Potter and the Goblet of Fire",
        "Harry Potter and the Order of the Phoenix",
        "Harry Potter and the Half-Blood Prince",
        "Harry Potter and the Deathly Hallows",
        "The Lion, the Witch and the Wardrobe",
        "Prince Caspian",
        "The Voyage of the Dawn Treader",
        "Alice's Adventures in Wonderland & Through the Looking-Glass"
      ) ~ "Fantasy",
      
      `Book Title` %in% c(
        "The Hunger Games",
        "Catching Fire",
        "Mockingjay",
        "Divergent",
        "Insurgent",
        "Allegiant",
        "The Maze Runner",
        "The Scorch Trials",
        "The Death Cure",
        "Dune"
      ) ~ "Dystopia",
      
      `Book Title` %in% c(
        "The Notebook",
        "The Fault in Our Stars",
        "A Walk to Remember",
        "Me Before You",
        "Dear John",
        "Pride and Prejudice",
        "Twilight",
        "New Moon",
        "Eclipse",
        "Breaking Dawn"
      ) ~ "Drama-romance"
    )
  )
