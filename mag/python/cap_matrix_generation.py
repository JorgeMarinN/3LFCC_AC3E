
m = int(input("Number of Columns: "))
n = int(input("Number of Rows: "))
fileName = input(".mag file name: ")
f = open("cap_matrix_"+str(m)+"x"+str(n)+".tcl","w")
f.write("getcell "+fileName+"\n")
f.write("set boxS [box size]\nset boxV [box values]\n")
for column in range(0,m):
    for cap in range(0,n):
        f.write("select clear\n")
        f.write("move to [expr {[lindex $boxV 0]+[lindex $boxS 0]*"+str(column)+"}]i [expr {[lindex $boxV 1]+[lindex $boxS 1]*"+str(cap)+"}]i\n")
        if(column!=0 or cap!=0):
            f.write("getcell "+fileName+"\n")

f.close()