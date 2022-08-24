#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

data = pd.read_csv("3LFCC_v1p4.csv").values
num_rows, num_cols = data.shape
print(num_rows)
print(num_cols)
#thres  = 0.9
x_out = data[1000:num_rows,1]
y_out = data[1000:num_rows,2]
x_in = data[1000:num_rows,3]
y_in = data[1000:num_rows,4]
#x=x[~pd.isnull(x)]
#y=y[~pd.isnull(y)]
#kk2=np.diff(y > thres, prepend=False)
#kk3=np.argwhere(kk2)[::2,0]
#lgt=kk3.shape
#print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))

vout_rms = np.sqrt(np.mean(y_out**2))
iin_rms = np.sqrt(np.mean(y_in**2))
##eff = vout_rms*0.3/(iin_rms*5)*100
eff = (vout_rms*0.3/(iin_rms*5))*100
print("I_in_rms",iin_rms,"[A]")
print("V_out_rms:",vout_rms,"[V]")
print("efiencia:", eff ,"[%]")
plt.plot(x_in,y_in)
plt.show()

#plt.plot([1.9e-12,1.92e-12,1.94e-12,1.96e-12,1.98e-12,2e-12,2.02e-12,2.04e-12,2.06e-12,2.08e-12,2.1e-12],frq)
#plt.show()
#2.489e-9 - 1.466e-9
#1.9829e-8 - 1.8802e-8
