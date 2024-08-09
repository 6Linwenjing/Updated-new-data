import numpy as np
import pandas as pd

df = pd.read_csv("./GSE178535_count.filter0.nor.log2.csv", header=0, index_col=0, sep=",")
grouped = df.groupby(df.index)
total_arr = []
for group in grouped:
	sub_df = group[1].max(axis=0).to_frame().T
	sub_df.index = [group[0]]
	total_arr.append(sub_df)
total_df = pd.concat(total_arr, axis=0)

total_df.to_csv("./GSE178535_raw.txt", header=True, index=True, sep="\t")
