\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  y[0] + y[1] + y[2] + y[3] + 45 gamma[0,0] + 25 gamma[0,1] + 45 gamma[1,0]
   + 25 gamma[1,1] + 45 gamma[2,0] + 25 gamma[2,1] + 45 gamma[3,0]
   + 25 gamma[3,1]
Subject To
 theta[0,0]: y[0] + 45 gamma[0,0] - 20 w[0,1] - 45 sigma[0,0] >= 0
 theta[0,1]: y[0] + 25 gamma[0,1] + 20 w[0,0] - 25 sigma[0,1] >= 0
 theta[1,0]: y[1] + 45 gamma[1,0] - 2 w[1,1] - 12 sigma[1,0] >= 0
 theta[1,1]: y[1] + 25 gamma[1,1] + 2 w[1,0] - 10 sigma[1,1] >= 0
 theta[2,0]: y[2] + 45 gamma[2,0] + 8 w[2,1] - 15 sigma[2,0] >= 0
 theta[2,1]: y[2] + 25 gamma[2,1] - 8 w[2,0] - 23 sigma[2,1] >= 0
 theta[3,0]: y[3] + 45 gamma[3,0] - w[3,1] - 11 sigma[3,0] >= 0
 theta[3,1]: y[3] + 25 gamma[3,1] + w[3,0] - 10 sigma[3,1] >= 0
 p[0,0]: - gamma[0,0] + w[0,1] + sigma[0,0] + beta[0,0] >= 1
 p[0,1]: - gamma[0,1] + w[0,0] + sigma[0,1] + beta[0,1] >= 1
 p[1,0]: - gamma[1,0] + w[1,1] + sigma[1,0] + beta[1,0] >= 1
 p[1,1]: - gamma[1,1] + w[1,0] + sigma[1,1] + beta[1,1] >= 1
 p[2,0]: - gamma[2,0] + w[2,1] + sigma[2,0] + beta[2,0] >= 1
 p[2,1]: - gamma[2,1] + w[2,0] + sigma[2,1] + beta[2,1] >= 1
 p[3,0]: - gamma[3,0] + w[3,1] + sigma[3,0] + beta[3,0] >= 1
 p[3,1]: - gamma[3,1] + w[3,0] + sigma[3,1] + beta[3,1] >= 1
 pi[0]: gamma[0,0] + gamma[1,0] + gamma[2,0] + gamma[3,0] - w[0,0] - w[1,0]
   - w[2,0] - w[3,0] - beta[0,0] - beta[1,0] - beta[2,0] - beta[3,0] >= 0
 pi[1]: gamma[0,1] + gamma[1,1] + gamma[2,1] + gamma[3,1] - w[0,1] - w[1,1]
   - w[2,1] - w[3,1] - beta[0,1] - beta[1,1] - beta[2,1] - beta[3,1] >= 0
Bounds
End
