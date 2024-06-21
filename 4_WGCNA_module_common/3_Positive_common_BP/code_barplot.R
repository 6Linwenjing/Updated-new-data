library(ggplot2)

df = read.table("./positive_common_BP.txt", header=T, sep="\t")
ggplot(df, aes(x=reorder(Term, -Count), y=Count, fill=PValue))+
geom_bar(stat="identity", width=0.5)+
scale_fill_gradient(low="red", high="lightgray")+
theme_bw()+
theme(axis.text.x=element_text(angle=30, hjust=1, face="bold", size=12), axis.text.y=element_text(face="bold", size=12), axis.title.y=element_text(face="bold", size=15), axis.title.x=element_blank())




