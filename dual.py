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
	m.setObjective(sum(Y[i]+rBar[i]*sum(G[i,j] for j in range(len(R[0]))) for i in range(len(R))), GRB.MINIMIZE)
	setCons(m,N,R,rBar,Y,G,w,sig,bet)
	duals=m.getAttr("Pi", m.getConstrt())
	#print()
	m.write('dual1.lp')
	m.optimize()

def getData(fname):
	df = pd.read_excel(fname)
	M=df.to_numpy()
	return (M[:,0], M[:,1:])
	
def getRbar(R):
	rBar=[]
	for r in R:
		rBar.append(np.max(r))
	return rBar


def getVars(R,m):
	n=len(R)
	j=len(R[0])
	Y=m.addVars(n)
	G=m.addVars(n,j)
	w=m.addVars(n,j)
	sig=m.addVars(n,j)
	bet=m.addVars(n,j)
	return  Y,G,w,sig,bet

def setCons(m,N,R,rBar,Y,G,w,sig,bet):
	n = len(R)
	d=len(R[0])
	m.addConstrs(((sum(w[i,k]*(R[i][k]-R[i][j]) for k in [x for x in range(d) if x != j])-R[i][j]*sig[i,j]+Y[i]+rBar[i]*G[i,j]) >= 0 for i in range(n) for j in range(d)), name='theta')
	m.addConstrs(((sum(w[i,k] for k in [x for x in range(d) if x!=j]) +sig[i,j]+bet[i,j]-G[i,j])>=N[i] for i in range(n) for j in range(d)), name='p')
	m.addConstrs((sum(G[i,j]-bet[i,j]-w[i,j] for i in range(n)) >=0 for j in range(d)), name='pi')	
	
main()