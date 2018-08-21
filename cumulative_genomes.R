library(ggplot2)
data <- read.csv('cumulative_no_genomes.csv', header=FALSE)
names(data) <- c("year", "genomes")
ggplot(data, aes(x=year, y=genomes)) + geom_line(color="blue") +
    scale_y_log10(name="Genomes Sequenced", breaks=c(10,100,1000,10000,100000,1000000), labels=c("10","100","1,000","10,000","100,000","1,000,000")) +
    theme_bw() + theme(text = element_text(size=16), aspect.ratio=1./3.) +
   ylab("Cumulative number Human Genomes Sequenced") + xlab("Year")
ggsave("cumulative_genomes.png")
ggsave("cumulative_genomes.pdf")
