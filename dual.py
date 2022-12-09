import gurobipy as gp
from gurobipy import GRB
import pandas as pd
import numpy as np

def main():
	fname='sampleR.xlsx'
	N,R=getData(fname)
	rBar=getRbar(R)
	m=gp.Model('dual')
	Y,G,w,sig,bet=getVars(R,m)
	setCons(m,N,R,rBar,Y,G,w,sig,bet)
	#duals=m.getAttr("Pi", m.getConstrt())
	#m.write('2x3.lp')
	m.optimize()
	for var in m.getVars():
		print(var)
	print(m.display())
	print(m.getAttr(GRB.Attr.X, m.getVars()))
	
def buildModel(R,N,m):
	rBar=getRbar(R)
	Vars=getVars(R,m)
	setobj(len(R),m,rBar,Vars[0],Vars[1])
	setCons(m,N,R,rBar,Vars[0],Vars[1],Vars[2],Vars[3],Vars[4])

def getData(fname):
	df = pd.read_excel(fname)
	M=df.to_numpy()
	return (M[:,0], M[:,1:])
	
def getRbar(R):
	return R.max(axis=0)

def setobj(n,model,rBar,Y,G):
	m=len(rBar)
	model.setObjective(sum(Y[i]+sum(rBar[j]*G[i,j] for j in range(m)) for i in range(n)), GRB.MINIMIZE)

def getVars(R,m):
	n=len(R)
	j=len(R[0])
	Y=m.addVars(n, name='y')
	G=m.addVars(n,j, name='gamma')
	w=m.addVars(n,j, name='w')
	sig=m.addVars(n,j, name='sigma')
	bet=m.addVars(n,j, name='beta')
	return [Y,G,w,sig,bet]

def setCons(m,N,R,rBar,Y,G,w,sig,bet):
	n = len(R)
	d=len(R[0])
	m.addConstrs(((sum(w[i,k]*(R[i][k]-R[i][j]) for k in [x for x in range(d) if x != j])-R[i][j]*sig[i,j]+Y[i]+rBar[j]*G[i,j]) >= 0 for i in range(n) for j in range(d)), name='theta')
	m.addConstrs(((sum(w[i,k] for k in [x for x in range(d) if x!=j]) +sig[i,j]+bet[i,j]-G[i,j])>=N[i] for i in range(n) for j in range(d)), name='p')
	m.addConstrs((sum(G[i,j]-bet[i,j]-w[i,j] for i in range(n)) >=0 for j in range(d)), name='pi')	
	
#main()