# Load necessary library
library(readr)

setwd("X:/R/Fundamental")

# Read the CSV file into a data frame
df <- read_csv("dm_office_sales.csv")

# View the first few rows of the data frame
head(df)

# scatter plot
ggplot(df, aes(x = sales, y = salary, color = sales)) +
  geom_point() +
  labs(title = "Scatter Plot of Sales vs Salary",
       x = "Sales",
       y = "Salary") +
  theme_minimal()


# scatter plot with color based on 'division'
ggplot(df, aes(x = sales, y = salary, color = division)) +
  geom_point() +
  labs(title = "Scatter Plot of Sales vs Salary by Division",
       x = "Sales",
       y = "Salary") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14)) +
  theme(aspect.ratio = 1/3)

# scatter plot with color based on 'salary'
ggplot(df, aes(x = sales, y = salary, color = salary)) +
  geom_point() +
  labs(title = "Scatter Plot of Sales vs Salary by Salary",
       x = "Sales",
       y = "Salary") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14)) +
  theme(aspect.ratio = 1/3)

# scatter plot with color based on 'salary' and custom size
ggplot(df, aes(x = sales, y = salary, color = salary)) +
  geom_point(size = 4) +
  scale_color_viridis_c() +  
  labs(title = "Scatter Plot of Sales vs Salary with Custom Size",
       x = "Sales",
       y = "Salary") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14)) +
  theme(aspect.ratio = 1/3)

# scatter plot with color based on 'division' and transparency
ggplot(df, aes(x = sales, y = salary, color = division)) +
  geom_point(alpha = 0.6) +
  labs(title = "Scatter Plot of Sales vs Salary with Division and Transparency",
       x = "Sales",
       y = "Salary") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14)) +
  theme(aspect.ratio = 1/3)


# histogram with custom number of bins and KDE
ggplot(df, aes(x = salary)) +
  geom_histogram(aes(y = ..density..), bins = 35, alpha = 0.5, fill = "blue") +
  geom_density(alpha = 0.5, color = "red") +
  labs(title = "Histogram of Salary with 35 Bins and KDE",
       x = "Salary",
       y = "Density") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14))

#######################################################

df2 <- read_csv("StudentsPerformance.csv")

# boxplot of the reading score
ggplot(df2, aes(x = `reading score`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Reading Score",
       x = "Reading Score",
       y = "") +
  theme_minimal() +
  theme(axis.title.y = element_blank())

#boxplot of math score by parental level of education with hue
ggplot(df2, aes(x = `parental level of education`, y = `math score`, fill = `parental level of education`)) +
  geom_boxplot() +
  labs(title = "Boxplot of Math Score by Parental Level of Education",
       x = "Parental Level of Education",
       y = "Math Score") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1),  
        plot.title = element_text(size = 16),
        axis.title = element_text(size = 14))


# Facet Grid scatter plot
ggplot(df2, aes(x = `math score`, y = `reading score`, color = gender)) +
  geom_point() +
  facet_grid(rows = vars(lunch), cols = vars(gender)) +
  labs(title = "Scatter Plot of Math Score vs Reading Score by Gender",
       x = "Math Score",
       y = "Reading Score") +
  theme_minimal() +
  theme(plot.title = element_text(size = 16),
        axis.title = element_text(size = 14)) +
  scale_color_manual(values = c("blue", "red"))













