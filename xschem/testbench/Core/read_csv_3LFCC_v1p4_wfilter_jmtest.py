#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

from scipy.signal import find_peaks

df=pd.read_fwf('3LFCC_v1p5_wfilter_jmtest.txt')
df.to_csv('3LFCC_v1p5_wfilter_jmtest.csv', index=False)
data = pd.read_csv("3LFCC_v1p5_wfilter_jmtest.csv").values
num_rows, num_cols = data.shape
print("Data rows:",num_rows)
print("Data columns:",num_cols)


i_cut = 2000
#thres  = 0.9
#x_out = data[243:472,0]
#y_out = data[243:472,1]
#x_in = data[243:472,2]
#y_in = data[243:472,3]
x_out = data[i_cut:num_rows,0]
y_out = data[i_cut:num_rows,1]
#x_in = data[:,2] + data[:,4]
#y_in = data[:,3] + data[:,5]
x_in = data[i_cut:num_rows,2]
y_in = (-1)*data[i_cut:num_rows,3]
x_in_LS = data[i_cut:num_rows,4]
y_in_LS = (-1)*data[i_cut:num_rows,5]
data_iout = data[i_cut:num_rows,7];


peaks , _ = find_peaks(y_in, height=0.7)
#peaks , _ = find_peaks(y_in, height=1.6)
pk_len = len(peaks)
print("Pk length:",pk_len)
#plt.plot(y_in)
#plt.plot(peaks, y_in[peaks], "x")
#plt.plot(np.zeros_like(y_in),"--",color="gray")
#plt.show()

#x=x[~pd.isnull(x)]
#y=y[~pd.isnull(y)]
#kk2=np.diff(y > thres, prepend=False)
#kk3=np.argwhere(kk2)[::2,0]
#lgt=kk3.shape
#print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))



r = 22
pk_init = 10;
vout = np.mean(y_out[peaks[pk_init]:peaks[pk_len-1]])
iin = np.mean(y_in[peaks[pk_init]:peaks[pk_len-1]])
ils = np.mean(y_in_LS[peaks[pk_init]:peaks[pk_len-1]])
iout = np.mean(data_iout[peaks[pk_init]:peaks[pk_len-1]])
#iout = vout/r
pout = vout*iout
pin = 5*iin

##eff = vout_rms*0.3/(iin_rms*5)*100
##if (pin == 0) pin = 0.000000001
eff_ls = (pout/(5*(iin+ils)) )*(100)
eff = (pout/pin )*(100)
print("I_in promedio (no LS)",iin,"[A]")
print("I_in LS",ils,"[A]")
print("I_out promedio",iout,"[A]")
print("V_out promedio:",vout,"[V]")
print("potencia de entrada:",pin, "[W]")
print("potencia de salida:",pout, "[W]")


print("eficiencia:", eff ,"[%]")
print("eficiencia (con LS):", eff_ls ,"[%]")
plt.plot(x_in[peaks[pk_init]:peaks[pk_len-1]],y_in[peaks[pk_init]:peaks[pk_len-1]])
plt.show()

plt.plot(x_in_LS[peaks[pk_init]:peaks[pk_len-1]],y_in_LS[peaks[pk_init]:peaks[pk_len-1]])
plt.show()

plt.plot(x_out[peaks[pk_init]:peaks[pk_len-1]],y_out[peaks[pk_init]:peaks[pk_len-1]])
plt.show()


#plt.plot([1.9e-12,1.92e-12,1.94e-12,1.96e-12,1.98e-12,2e-12,2.02e-12,2.04e-12,2.06e-12,2.08e-12,2.1e-12],frq)
#plt.show()
#2.489e-9 - 1.466e-9
#1.9829e-8 - 1.8802e-8
