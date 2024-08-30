install.packages("tidyverse")

library(tidyverse)

install.packages("nycflights13")

library(nycflights13)

df <- flights

# filter -- subsets of a dataframe

df2 <- filter(df, 
              month == 2, carrier == "AA")


# slice -- subsetting the DF in an intuitive way by multiple indexing
df3 <- slice(df,
             c(1:100, 201:225, 1001:2000))


# arrange - sorting

df2 <- arrange(df2,
               desc(distance))


# select
df4 <- select(df2, c("dep_time", "dep_delay",
                     "arr_time", "distance"))


df4 <- select(df2, c(4,6,15,16))


# rename
df4 <- rename(df4, distance_in_km = distance)

df4 <- select(df2, c(4,6,15,16, 10))

df4 <- rename(df4, distance_in_km = distance, 
              dep_time_hours = dep_time)



# distinct
distinct(df, carrier)

# mutate() -- new column creation
df4 <- mutate(df4, duration = air_time/distance_in_km)


df4$duration <- df4$air_time/df4$distance_in_km

# transmute()
df4 <- transmute(df4, duration = air_time/distance_in_km)

# summarise()

summarise(df4, avg_distance = mean(distance, na.rm=TRUE))

# piping operator and group by usage

df5 <- df %>%
  group_by(carrier) %>%
  summarise(avg_distance = mean(distance, na.rm = TRUE),
            avg_airtime = mean(air_time, na.rm = TRUE)) %>%
  arrange(desc(avg_distance))


library(ggplot2)

install.packages("esquisse")

library(esquisse)


library(ggplot2)

ggplot(df5) +
  aes(x = carrier, y = avg_distance, fill = carrier) +
  geom_col() +
  scale_fill_viridis_d(option = "magma", direction = 1) +
  labs(
    x = "Carrier",
    y = "Avg Distance",
    title = "Avg Distance "
  ) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    plot.title = element_text(size = 14L,
                              face = "bold",
                              hjust = 0.5)
  )

