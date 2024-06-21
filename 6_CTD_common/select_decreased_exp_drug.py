import os
import numpy as np
import pandas as pd

filelist = os.listdir("./raw/")
for file in filelist:
	df = pd.read_csv("./raw/"+file, header=0, index_col=0, sep="\t")
	df = df.loc[df["Interaction Actions"]=="decreases^expression"]
	df.to_csv("./decreased_expression/"+file, header=True, index=True, sep="\t")
















