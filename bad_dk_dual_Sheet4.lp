\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  y[0] + y[1] + y[2] + y[3] + 100 gamma[0,0] + 50 gamma[0,1] + 75 gamma[0,2]
   + 100 gamma[1,0] + 50 gamma[1,1] + 75 gamma[1,2] + 100 gamma[2,0]
   + 50 gamma[2,1] + 75 gamma[2,2] + 100 gamma[3,0] + 50 gamma[3,1]
   + 75 gamma[3,2]
Subject To
 theta[0,0]: y[0] + 100 gamma[0,0] - 50 w[0,1] - 25 w[0,2] - 100 sigma[0,0]
   >= 0
 theta[0,1]: y[0] + 50 gamma[0,1] + 50 w[0,0] + 25 w[0,2] - 50 sigma[0,1]
   >= 0
 theta[0,2]: y[0] + 75 gamma[0,2] + 25 w[0,0] - 25 w[0,1] - 75 sigma[0,2]
   >= 0
 theta[1,0]: y[1] + 100 gamma[1,0] - 23.1 w[1,1] - 5.7 w[1,2]
   - 46.4 sigma[1,0] >= 0
 theta[1,1]: y[1] + 50 gamma[1,1] + 23.1 w[1,0] + 17.4 w[1,2]
   - 23.3 sigma[1,1] >= 0
 theta[1,2]: y[1] + 75 gamma[1,2] + 5.7 w[1,0] - 17.4 w[1,1]
   - 40.7 sigma[1,2] >= 0
 theta[2,0]: y[2] + 100 gamma[2,0] - 10.7 w[2,1] + 0.6 w[2,2]
   - 21.5 sigma[2,0] >= 0
 theta[2,1]: y[2] + 50 gamma[2,1] + 10.7 w[2,0] + 11.3 w[2,2]
   - 10.8 sigma[2,1] >= 0
 theta[2,2]: y[2] + 75 gamma[2,2] - 0.6 w[2,0] - 11.3 w[2,1]
   - 22.1 sigma[2,2] >= 0
 theta[3,0]: y[3] + 100 gamma[3,0] - 5 w[3,1] + 2 w[3,2] - 10 sigma[3,0]
   >= 0
 theta[3,1]: y[3] + 50 gamma[3,1] + 5 w[3,0] + 7 w[3,2] - 5 sigma[3,1]
   >= 0
 theta[3,2]: y[3] + 75 gamma[3,2] - 2 w[3,0] - 7 w[3,1] - 12 sigma[3,2]
   >= 0
 p[0,0]: - gamma[0,0] + w[0,1] + w[0,2] + sigma[0,0] + beta[0,0] >= 1
 p[0,1]: - gamma[0,1] + w[0,0] + w[0,2] + sigma[0,1] + beta[0,1] >= 1
 p[0,2]: - gamma[0,2] + w[0,0] + w[0,1] + sigma[0,2] + beta[0,2] >= 1
 p[1,0]: - gamma[1,0] + w[1,1] + w[1,2] + sigma[1,0] + beta[1,0] >= 1
 p[1,1]: - gamma[1,1] + w[1,0] + w[1,2] + sigma[1,1] + beta[1,1] >= 1
 p[1,2]: - gamma[1,2] + w[1,0] + w[1,1] + sigma[1,2] + beta[1,2] >= 1
 p[2,0]: - gamma[2,0] + w[2,1] + w[2,2] + sigma[2,0] + beta[2,0] >= 1
 p[2,1]: - gamma[2,1] + w[2,0] + w[2,2] + sigma[2,1] + beta[2,1] >= 1
 p[2,2]: - gamma[2,2] + w[2,0] + w[2,1] + sigma[2,2] + beta[2,2] >= 1
 p[3,0]: - gamma[3,0] + w[3,1] + w[3,2] + sigma[3,0] + beta[3,0] >= 1
 p[3,1]: - gamma[3,1] + w[3,0] + w[3,2] + sigma[3,1] + beta[3,1] >= 1
 p[3,2]: - gamma[3,2] + w[3,0] + w[3,1] + sigma[3,2] + beta[3,2] >= 1
 pi[0]: gamma[0,0] + gamma[1,0] + gamma[2,0] + gamma[3,0] - w[0,0] - w[1,0]
   - w[2,0] - w[3,0] - beta[0,0] - beta[1,0] - beta[2,0] - beta[3,0] >= 0
 pi[1]: gamma[0,1] + gamma[1,1] + gamma[2,1] + gamma[3,1] - w[0,1] - w[1,1]
   - w[2,1] - w[3,1] - beta[0,1] - beta[1,1] - beta[2,1] - beta[3,1] >= 0
 pi[2]: gamma[0,2] + gamma[1,2] + gamma[2,2] + gamma[3,2] - w[0,2] - w[1,2]
   - w[2,2] - w[3,2] - beta[0,2] - beta[1,2] - beta[2,2] - beta[3,2] >= 0
Bounds
End
