#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

df=pd.read_fwf('3LFCC_v1p4.txt')
df.to_csv('3LFCC_v1p4.csv', index=False)
data = pd.read_csv("3LFCC_v1p4.csv").values
num_rows, num_cols = data.shape

#thres  = 0.9
x_out = data[138:278,0]
y_out = data[138:278,1]
x_in = data[138:278,2]
y_in = data[138:278,3]

#x=x[~pd.isnull(x)]
#y=y[~pd.isnull(y)]
#kk2=np.diff(y > thres, prepend=False)
#kk3=np.argwhere(kk2)[::2,0]
#lgt=kk3.shape
#print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))



r = 18
vout = np.mean(y_out)
iin = (-1)*np.mean(y_in)
iout = vout/r
pout = vout*iout
pin = 5*iin

##eff = vout_rms*0.3/(iin_rms*5)*100
##if (pin == 0) pin = 0.000000001
eff = (pout/pin )*(100)
print("I_in promedio",iin,"[A]")
print("I_out promedio",iout,"[A]")
print("V_out promedio:",vout,"[V]")
print("potencia de entrada:",pin, "[W]")
print("potencia de salida:",pout, "[W]")



print("eficiencia:", eff ,"[%]")
print("resistencia:",r)
plt.plot(x_in,-y_in)
plt.show()

#plt.plot([1.9e-12,1.92e-12,1.94e-12,1.96e-12,1.98e-12,2e-12,2.02e-12,2.04e-12,2.06e-12,2.08e-12,2.1e-12],frq)
#plt.show()
#2.489e-9 - 1.466e-9
#1.9829e-8 - 1.8802e-8
