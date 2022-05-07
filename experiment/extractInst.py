import editdistance
filename="TestProgram.wat"
f=open(filename,"r")
content=f.read()
seq=content.split("\n")


filename1="TestProgram1.wat"
f1=open(filename1,"r")
content1=f1.read()
seq1=content1.split("\n")

difference=editdistance.eval(seq, seq1)
print(difference)
print(len(seq))
print(difference/len(seq))
