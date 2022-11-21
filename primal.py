import gurobipy as gp
from gurobipy import GRB
import pandas as pd
import numpy as np

def main():
	fname='2x3.xlsx'
	N,R=getData(fname)
	rBar=getRbar(R)
	m=gp.Model('primal')
	theta, p, pi=getVars(R,m)
	m.setObjective(sum(N[i]*p[i,j] for j in range(len(R[0])) for i in range(len(R))), GRB.MAXIMIZE)
	setCons(m,N,R,rBar,theta, p, pi)
	#m.write('primal.lp')
	m.optimize()
	for var in m.getVars():
		print(var)
	print(m.display())
	print(m.getAttr(GRB.Attr.X, m.getVars()))

def getData(fname):
	df = pd.read_excel(fname)
	M=df.to_numpy()
	return (M[:,0], M[:,1:])
	
def getRbar(R):
	return R.max(axis=0)

def getVars(R,m):
	n=len(R)
	j=len(R[0])
	theta=m.addVars(n,j)
	p=m.addVars(n,j)
	pi=m.addVars(j)
	return  theta, p, pi

def setCons(m,N,R,rBar,theta, p, pi):
	n = len(R)
	d=len(R[0])
	m.addConstrs(((sum(theta[i,j]*(R[i,k]-R[i,j])+p[i,j] for j in [x for x in range(d) if x!=k])-pi[k]) <= 0 for i in range(n) for k in range(d)), name='A')
	m.addConstrs((rBar[j]*theta[i,j]-p[i,j]+pi[j]<=rBar[j] for i in range(n) for j in range(d)), name='B')
	m.addConstrs((sum(theta[i,j] for j in range(d))<=1 for i in range(n)), name='C')
	m.addConstrs((p[i,j]-R[i,j]*theta[i,j]<=0 for i in range(n) for j in range(d)), name='D')
	m.addConstrs((p[i,j]-pi[j]<=0 for i in range(n) for j in range(d)), name='E')	
	
main()