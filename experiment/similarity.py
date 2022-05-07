import editdistance
origin="origin.ll"
forigin=open(origin,"r")
originContent=forigin.read()
seq=originContent.split("\n")

#variants=[]
fdata=open("data.txt", "r")
data=fdata.read()
variants=data.split("  ")
print(variants[len(variants)-1])
if(variants[len(variants)-1]==""):
  del variants[len(variants)-1]

sum=0
for v in variants:
  print(v)
  f=open(v, "r")
  content=f.read()
  seq1=content.split("\n")
  print(len(seq1))
  difference=editdistance.eval(seq, seq1)
  sum+=difference
  print(editdistance.eval(seq, seq1))

result=sum/len(variants)
print(result)
print(1-result/len(seq))
