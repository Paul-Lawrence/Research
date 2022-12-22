\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  y[0] + y[1] + y[2] + y[3] + 26 gamma[0,0] + 23 gamma[0,1] + 26 gamma[1,0]
   + 23 gamma[1,1] + 26 gamma[2,0] + 23 gamma[2,1] + 26 gamma[3,0]
   + 23 gamma[3,1]
Subject To
 theta[0,0]: y[0] + 26 gamma[0,0] - 2 w[0,1] - 12 sigma[0,0] >= 0
 theta[0,1]: y[0] + 23 gamma[0,1] + 2 w[0,0] - 10 sigma[0,1] >= 0
 theta[1,0]: y[1] + 26 gamma[1,0] - 3 w[1,1] - 7 sigma[1,0] >= 0
 theta[1,1]: y[1] + 23 gamma[1,1] + 3 w[1,0] - 4 sigma[1,1] >= 0
 theta[2,0]: y[2] + 26 gamma[2,0] - w[2,1] - 11 sigma[2,0] >= 0
 theta[2,1]: y[2] + 23 gamma[2,1] + w[2,0] - 10 sigma[2,1] >= 0
 theta[3,0]: y[3] + 26 gamma[3,0] - 3 w[3,1] - 26 sigma[3,0] >= 0
 theta[3,1]: y[3] + 23 gamma[3,1] + 3 w[3,0] - 23 sigma[3,1] >= 0
 p[0,0]: - gamma[0,0] + w[0,1] + sigma[0,0] + beta[0,0] >= 90
 p[0,1]: - gamma[0,1] + w[0,0] + sigma[0,1] + beta[0,1] >= 90
 p[1,0]: - gamma[1,0] + w[1,1] + sigma[1,0] + beta[1,0] >= 1
 p[1,1]: - gamma[1,1] + w[1,0] + sigma[1,1] + beta[1,1] >= 1
 p[2,0]: - gamma[2,0] + w[2,1] + sigma[2,0] + beta[2,0] >= 1
 p[2,1]: - gamma[2,1] + w[2,0] + sigma[2,1] + beta[2,1] >= 1
 p[3,0]: - gamma[3,0] + w[3,1] + sigma[3,0] + beta[3,0] >= 90
 p[3,1]: - gamma[3,1] + w[3,0] + sigma[3,1] + beta[3,1] >= 90
 pi[0]: gamma[0,0] + gamma[1,0] + gamma[2,0] + gamma[3,0] - w[0,0] - w[1,0]
   - w[2,0] - w[3,0] - beta[0,0] - beta[1,0] - beta[2,0] - beta[3,0] >= 0
 pi[1]: gamma[0,1] + gamma[1,1] + gamma[2,1] + gamma[3,1] - w[0,1] - w[1,1]
   - w[2,1] - w[3,1] - beta[0,1] - beta[1,1] - beta[2,1] - beta[3,1] >= 0
Bounds
End
