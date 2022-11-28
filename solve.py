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
	
def profit(R,pi,theta):
	S=0
	for i in range(len(R)):
		S+=R[i][theta[i]]*pi[theta[i]]
	return S
	
def singlePrice(R,N): #Calculates value of the single-price Guru algorithm
	sigma=getSigma(R)
	rBar=rBar_n(R)
	inds=np.flip(rBar.argsort())
	rBar,N=rBar[inds],N[inds]
	L=[]
	for i in range(len(R)):	
		L.append(rBar[i]*sum(N[0:i+1]))
	l=np.argmax(L)
	pi=[l]*len(R[0])
	theta=assign(R,pi)
	return profit(R,pi,theta)
	
		
def assign(R,pi): #Takes as input a set of R values and a pricing vector and returns a 
	theta=[] #corresponding assignment vector theta
	for i in range(len(R)): 
		theta.append(np.argmax([R[i][k]-pi[k] for k in range(len(R[0]))]))
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
	n=10
	m=10
	R=generateRs(n,m,1,100)
	N=generateNs(n,1,50)	
	solveDual(R,N)
	solvePrimal(R,N)
	print(singlePrice(R,N))

model=gp.Model('solver')
main()