\ Model primal
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  C6 + C7 + 5 C8 + 5 C9 + 100 C10 + 100 C11
Subject To
 A[0,0]: 2 C1 + C7 - C12 <= 0
 A[0,1]: - 2 C0 + C6 - C13 <= 0
 A[1,0]: 5 C3 + C9 - C12 <= 0
 A[1,1]: - 5 C2 + C8 - C13 <= 0
 A[2,0]: - C5 + C11 - C12 <= 0
 A[2,1]: C4 + C10 - C13 <= 0
 B[0,0]: 10 C0 - C6 + C12 <= 10
 B[0,1]: 8 C1 - C7 + C13 <= 8
 B[1,0]: 10 C2 - C8 + C12 <= 10
 B[1,1]: 8 C3 - C9 + C13 <= 8
 B[2,0]: 10 C4 - C10 + C12 <= 10
 B[2,1]: 8 C5 - C11 + C13 <= 8
 C[0]: C0 + C1 <= 1
 C[1]: C2 + C3 <= 1
 C[2]: C4 + C5 <= 1
 D[0,0]: - 10 C0 + C6 <= 0
 D[0,1]: - 8 C1 + C7 <= 0
 D[1,0]: - 8 C2 + C8 <= 0
 D[1,1]: - 3 C3 + C9 <= 0
 D[2,0]: - C4 + C10 <= 0
 D[2,1]: - 2 C5 + C11 <= 0
 E[0,0]: C6 - C12 <= 0
 E[0,1]: C7 - C13 <= 0
 E[1,0]: C8 - C12 <= 0
 E[1,1]: C9 - C13 <= 0
 E[2,0]: C10 - C12 <= 0
 E[2,1]: C11 - C13 <= 0
Bounds
End
