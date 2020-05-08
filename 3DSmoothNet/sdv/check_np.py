import numpy as np
import pandas as pd
import os 


for csv in os.listdir("."):
	print(csv)
	df = pd.read_csv(csv)
	print(df)
