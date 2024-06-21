library(ggplot2)

df = read.table("./RSA_negative_dotplot.txt", header=T, sep="\t")
Term = unique(df$Term)
Module = unique(df$Module)
df$Term = factor(df$Term, levels=Term)
df$Module = factor(df$Module, levels=Module)

ggplot(data=df, aes(x=Module, y=Term, color=PValue, size=Count))+
geom_point()+
scale_color_gradient(low="deepskyblue", high="lightgray")+
theme_bw()+
theme(text=element_text(family="Times"), axis.text.x=element_text(angle=30, face="bold", size=15, hjust=1), axis.text.y=element_text(face="bold", size=16), axis.title=element_blank())








