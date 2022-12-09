\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  y[0] + y[1] + y[2] + y[3] + y[4] + y[5] + y[6] + y[7] + y[8] + y[9]
   + y[10] + y[11] + y[12] + y[13] + 200 gamma[0,0] + 100 gamma[0,1]
   + 200 gamma[1,0] + 100 gamma[1,1] + 200 gamma[2,0] + 100 gamma[2,1]
   + 200 gamma[3,0] + 100 gamma[3,1] + 200 gamma[4,0] + 100 gamma[4,1]
   + 200 gamma[5,0] + 100 gamma[5,1] + 200 gamma[6,0] + 100 gamma[6,1]
   + 200 gamma[7,0] + 100 gamma[7,1] + 200 gamma[8,0] + 100 gamma[8,1]
   + 200 gamma[9,0] + 100 gamma[9,1] + 200 gamma[10,0] + 100 gamma[10,1]
   + 200 gamma[11,0] + 100 gamma[11,1] + 200 gamma[12,0] + 100 gamma[12,1]
   + 200 gamma[13,0] + 100 gamma[13,1]
Subject To
 theta[0,0]: y[0] + 200 gamma[0,0] + w[0,1] >= 0
 theta[0,1]: y[0] + 100 gamma[0,1] - w[0,0] - sigma[0,1] >= 0
 theta[1,0]: y[1] + 200 gamma[1,0] + w[1,1] - sigma[1,0] >= 0
 theta[1,1]: y[1] + 100 gamma[1,1] - w[1,0] - 2 sigma[1,1] >= 0
 theta[2,0]: y[2] + 200 gamma[2,0] + w[2,1] - 4 sigma[2,0] >= 0
 theta[2,1]: y[2] + 100 gamma[2,1] - w[2,0] - 5 sigma[2,1] >= 0
 theta[3,0]: y[3] + 200 gamma[3,0] + w[3,1] - 9 sigma[3,0] >= 0
 theta[3,1]: y[3] + 100 gamma[3,1] - w[3,0] - 10 sigma[3,1] >= 0
 theta[4,0]: y[4] + 200 gamma[4,0] + w[4,1] - 8 sigma[4,0] >= 0
 theta[4,1]: y[4] + 100 gamma[4,1] - w[4,0] - 9 sigma[4,1] >= 0
 theta[5,0]: y[5] + 200 gamma[5,0] + w[5,1] - 17 sigma[5,0] >= 0
 theta[5,1]: y[5] + 100 gamma[5,1] - w[5,0] - 18 sigma[5,1] >= 0
 theta[6,0]: y[6] + 200 gamma[6,0] + w[6,1] - 12 sigma[6,0] >= 0
 theta[6,1]: y[6] + 100 gamma[6,1] - w[6,0] - 13 sigma[6,1] >= 0
 theta[7,0]: y[7] + 200 gamma[7,0] - 3 w[7,1] - 5 sigma[7,0] >= 0
 theta[7,1]: y[7] + 100 gamma[7,1] + 3 w[7,0] - 2 sigma[7,1] >= 0
 theta[8,0]: y[8] + 200 gamma[8,0] - 3 w[8,1] - 10 sigma[8,0] >= 0
 theta[8,1]: y[8] + 100 gamma[8,1] + 3 w[8,0] - 7 sigma[8,1] >= 0
 theta[9,0]: y[9] + 200 gamma[9,0] - 3 w[9,1] - 9 sigma[9,0] >= 0
 theta[9,1]: y[9] + 100 gamma[9,1] + 3 w[9,0] - 6 sigma[9,1] >= 0
 theta[10,0]: y[10] + 200 gamma[10,0] - w[10,1] - 18 sigma[10,0] >= 0
 theta[10,1]: y[10] + 100 gamma[10,1] + w[10,0] - 17 sigma[10,1] >= 0
 theta[11,0]: y[11] + 200 gamma[11,0] - 3 w[11,1] - 13 sigma[11,0] >= 0
 theta[11,1]: y[11] + 100 gamma[11,1] + 3 w[11,0] - 10 sigma[11,1] >= 0
 theta[12,0]: y[12] + 200 gamma[12,0] - 3 w[12,1] - 26 sigma[12,0] >= 0
 theta[12,1]: y[12] + 100 gamma[12,1] + 3 w[12,0] - 23 sigma[12,1] >= 0
 theta[13,0]: y[13] + 200 gamma[13,0] - 100 w[13,1] - 200 sigma[13,0] >= 0
 theta[13,1]: y[13] + 100 gamma[13,1] + 100 w[13,0] - 100 sigma[13,1] >= 0
 p[0,0]: - gamma[0,0] + w[0,1] + sigma[0,0] + beta[0,0] >= 1
 p[0,1]: - gamma[0,1] + w[0,0] + sigma[0,1] + beta[0,1] >= 1
 p[1,0]: - gamma[1,0] + w[1,1] + sigma[1,0] + beta[1,0] >= 1
 p[1,1]: - gamma[1,1] + w[1,0] + sigma[1,1] + beta[1,1] >= 1
 p[2,0]: - gamma[2,0] + w[2,1] + sigma[2,0] + beta[2,0] >= 1
 p[2,1]: - gamma[2,1] + w[2,0] + sigma[2,1] + beta[2,1] >= 1
 p[3,0]: - gamma[3,0] + w[3,1] + sigma[3,0] + beta[3,0] >= 1
 p[3,1]: - gamma[3,1] + w[3,0] + sigma[3,1] + beta[3,1] >= 1
 p[4,0]: - gamma[4,0] + w[4,1] + sigma[4,0] + beta[4,0] >= 1
 p[4,1]: - gamma[4,1] + w[4,0] + sigma[4,1] + beta[4,1] >= 1
 p[5,0]: - gamma[5,0] + w[5,1] + sigma[5,0] + beta[5,0] >= 1
 p[5,1]: - gamma[5,1] + w[5,0] + sigma[5,1] + beta[5,1] >= 1
 p[6,0]: - gamma[6,0] + w[6,1] + sigma[6,0] + beta[6,0] >= 90
 p[6,1]: - gamma[6,1] + w[6,0] + sigma[6,1] + beta[6,1] >= 90
 p[7,0]: - gamma[7,0] + w[7,1] + sigma[7,0] + beta[7,0] >= 1
 p[7,1]: - gamma[7,1] + w[7,0] + sigma[7,1] + beta[7,1] >= 1
 p[8,0]: - gamma[8,0] + w[8,1] + sigma[8,0] + beta[8,0] >= 1
 p[8,1]: - gamma[8,1] + w[8,0] + sigma[8,1] + beta[8,1] >= 1
 p[9,0]: - gamma[9,0] + w[9,1] + sigma[9,0] + beta[9,0] >= 1
 p[9,1]: - gamma[9,1] + w[9,0] + sigma[9,1] + beta[9,1] >= 1
 p[10,0]: - gamma[10,0] + w[10,1] + sigma[10,0] + beta[10,0] >= 1
 p[10,1]: - gamma[10,1] + w[10,0] + sigma[10,1] + beta[10,1] >= 1
 p[11,0]: - gamma[11,0] + w[11,1] + sigma[11,0] + beta[11,0] >= 1
 p[11,1]: - gamma[11,1] + w[11,0] + sigma[11,1] + beta[11,1] >= 1
 p[12,0]: - gamma[12,0] + w[12,1] + sigma[12,0] + beta[12,0] >= 90
 p[12,1]: - gamma[12,1] + w[12,0] + sigma[12,1] + beta[12,1] >= 90
 p[13,0]: - gamma[13,0] + w[13,1] + sigma[13,0] + beta[13,0] >= 10
 p[13,1]: - gamma[13,1] + w[13,0] + sigma[13,1] + beta[13,1] >= 10
 pi[0]: gamma[0,0] + gamma[1,0] + gamma[2,0] + gamma[3,0] + gamma[4,0]
   + gamma[5,0] + gamma[6,0] + gamma[7,0] + gamma[8,0] + gamma[9,0]
   + gamma[10,0] + gamma[11,0] + gamma[12,0] + gamma[13,0] - w[0,0]
   - w[1,0] - w[2,0] - w[3,0] - w[4,0] - w[5,0] - w[6,0] - w[7,0] - w[8,0]
   - w[9,0] - w[10,0] - w[11,0] - w[12,0] - w[13,0] - beta[0,0] - beta[1,0]
   - beta[2,0] - beta[3,0] - beta[4,0] - beta[5,0] - beta[6,0] - beta[7,0]
   - beta[8,0] - beta[9,0] - beta[10,0] - beta[11,0] - beta[12,0]
   - beta[13,0] >= 0
 pi[1]: gamma[0,1] + gamma[1,1] + gamma[2,1] + gamma[3,1] + gamma[4,1]
   + gamma[5,1] + gamma[6,1] + gamma[7,1] + gamma[8,1] + gamma[9,1]
   + gamma[10,1] + gamma[11,1] + gamma[12,1] + gamma[13,1] - w[0,1]
   - w[1,1] - w[2,1] - w[3,1] - w[4,1] - w[5,1] - w[6,1] - w[7,1] - w[8,1]
   - w[9,1] - w[10,1] - w[11,1] - w[12,1] - w[13,1] - beta[0,1] - beta[1,1]
   - beta[2,1] - beta[3,1] - beta[4,1] - beta[5,1] - beta[6,1] - beta[7,1]
   - beta[8,1] - beta[9,1] - beta[10,1] - beta[11,1] - beta[12,1]
   - beta[13,1] >= 0
Bounds
End
