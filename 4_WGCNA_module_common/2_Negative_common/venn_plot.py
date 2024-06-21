from matplotlib_venn import venn2
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# plt.figure(figsize=(7, 7))
df1 = pd.read_csv("./PCOS_negative.txt", index_col=0, header=0, sep="\t")
df2 = pd.read_csv("./RSA_negative.txt", index_col=0, header=0, sep="\t")

my_set1 = set(df1.index)
my_set2 = set(df2.index)

# venn2([my_set1, my_set2], set_labels=["PCOS negative", "RSA negative"], set_colors=["chartreuse", "deepskyblue"])
# plt.savefig("./negative_venn.pdf")

result_arr = list(my_set1&my_set2)
result_arr.sort()
f2 = open("./negative_common.txt", "w")
for item in result_arr:
	f2.write(item+"\n")






