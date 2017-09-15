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

