import dual
import primal 
import gurobipy as gp
from gurobipy import GRB
import pandas as pd
import numpy as np



def rBar_d(R): #Returns a vector of Rbar values
	return R.max(axis=0)

def generateNs(n,lb=1,ub=100): #Generates n N_i values 
	return np.random.randint(lb,ub,n)
	
def generateRs(n,m,lb=1000,ub=100000): #Generates an n x m array of R_i's according to a _ distribution
	return np.random.randint(lb,ub,(n,m))

def writeto(m,fname):
	m.write(fname)
	
def getData(fname):
	df = pd.read_excel(fname)
	M=df.to_numpy()
	return (M[:,0], M[:,1:])
	
def getSigma(R):
	return R.argsort(axis=1)[:,-1]
	
def rBar_n(R):
	return R.max(axis=1)
	
#def guru_approx(N,rBar):
	#break
	
def profit(N,pi,theta):
	S=0
	for i in range(len(N)):
		S+=N[i]*pi[theta[i]]
	return S

def bad_upper(N,rBar):
	s=0
	for i in range(len(N)):
		s+=N[i]*rBar[i]
	return s
	
def singlePrice(R,N): #Calculates value of the single-price Guru algorithm
	sigma=getSigma(R)
	rBar=rBar_n(R)
	inds=np.flip(rBar.argsort())
	R,rBar,N=R[inds],rBar[inds],N[inds]
	L=[]
	for i in range(len(R)):	
		L.append(rBar[i]*sum(N[0:i+1]))
	l=np.argmax(L)
	pi=[rBar[l]]*len(R[0])
	zeros=[0]*len(R)
	R=np.insert(R,0, zeros, axis=1)
	pi=np.insert(pi,0,0)
	theta=assign(R,pi)
	return profit(N,pi,theta)
	
		
def assign(R,pi): #Takes as input a set of R values and a pricing vector and returns a 
	theta=[] #corresponding assignment vector theta
	for i in range(len(R)): 
		theta.append(len(R[0])-np.argmax(np.flip([R[i][k]-pi[k] for k in range(len(R[0]))]))-1)
	return theta
	
def solveDual(R,N):
	model=gp.Model('dual')
	dual.buildModel(R,N,model)
	model.optimize()
	
def solvePrimal(R,N):
	model=gp.Model('primal')
	primal.buildModel(R,N,model)
	model.optimize()

def main():
	N,R=getData('bad_dk.xlsx')
	solvePrimal(R,N)
	print(singlePrice(R,N))
	print(bad_upper(N,rBar_n(R)))

#model=gp.Model('solver')
main()