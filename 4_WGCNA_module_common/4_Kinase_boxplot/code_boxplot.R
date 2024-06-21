library(ggplot2)
library(ggpubr)


df = read.table("./PCOS_kinase_boxplot.txt", header=T, sep="\t")
df$Gene = factor(df$Gene, levels=unique(df$Gene))
ggplot(df, aes(x=Gene, y=Exp, fill=Type))+
scale_fill_manual(values=c("dodgerblue", "hotpink"))+
geom_boxplot(outlier.size=0.1, width=0.3)+
theme_bw()+
stat_compare_means(aes(group=Type), label="p.signif", method="wilcox")+
theme(axis.text.x=element_text(angle=30, hjust=1, face="bold", size=10), axis.text.y=element_text(face="bold", size=10), legend.position="none")





