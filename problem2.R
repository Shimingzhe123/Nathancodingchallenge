# define the dataframe

people <- data.frame(
  name = c("Alice", "Bob", "Carol", "Dave"),
  age = c(20, 25, 30, 35))

# Calculate the average age of these people in group

mean(people$age)

# Find the oldest person in the group

old_people <- max(people$age)

# Find the youngest person in the group

Youngpeope <- min(people$age)

# Save the results as an rdsfile for later visualization

saveRDS(people, "people.rds")

