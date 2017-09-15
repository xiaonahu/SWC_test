df <- read.csv("~/SWC_test/Metadata.csv")
str(df)
library("ggplot2")
ggplot(data =df, aes(x = Timepoint, y = ph, fill = Reactor.cycle)) +
geom_point(shape =21)
df$Reactor.cycle <- factor(df$Reactor.cycle)

ggplot(data =df, aes(x = Timepoint, y = ph, fill = Reactor.cycle)) +
geom_point(shape = 10)

p1 <- ggplot(data =df, aes(x = Timepoint, y = ph, fill = Reactor.phase))
p2 <- p1 + geom_point(shape = 21, size =4, alpha =0.5) + 
 geom_line()

p3 <- p2 + facet_grid(~Reactor.cycle)

df$Reactor.phase
levels(df$Reactor.phase)

p4 <- p2 + facet_grid(Reactor.phase~Reactor.cycle)
p4
p4 +geom_point()
p4 +geom_line(aes(color =Reactor.phase))
?aes

### cell density
ggplot(data =df, aes(x = Timepoint, y = Cell.density..cells.mL., fill = Reactor.cycle)) +
  geom_point(shape =21)
a1 <- ggplot(data =df, aes(x = Timepoint, y = Cell.density..cells.mL., fill = Reactor.cycle))
a2 <- a1 + geom_point(shape = 21, size =4, alpha =0.5) + 
  geom_line()

a3 <- a2 + facet_grid(~Reactor.cycle)
df$Reactor.phase
levels(df$Reactor.phase)

a4 <- a2 + facet_grid(Reactor.phase~Reactor.cycle)
a4
a4 +geom_point()
a4 +geom_line(aes(color =Reactor.cycle))
?geom_line
?ggplot
library(ggplot2)
library(dplyr)

df <- read.csv("~/SWC_test/Metadata.csv")
mean(df[df$Reactor.phase == "Control", "ph"])
levels(df$Reactor.phase)
physicalchemical <- select(df, ph, temp, Conductivity)

head(physicalchemical)

yschem <- df %>% select(ph, temp, Conductivity)
yschem.control <- df %>% filter(Reactor.phase == "control") %>%
  select(ph, temp, Conductivity)
# diversity
diversity <- df %>% filter(Reactor.phase == "Startup") %>% 
  select(Diversity...D0, Diversity...D1, Diversity...D2)
group123 <- df %>% group_by(Reactor.phase) %>% 
  summarise(meann.ph = mean(ph))

group123456 <- df %>% 
  filter(Reactor.cycle == "2") %>% 
  summarise(mean.cell = mean(log10(Cell.density..cells.mL.)),sd.diverisity = sd(ph))

?full_join
  
  
  
  
  
  
  
  