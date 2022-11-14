\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  C0 + C1 + 20 C2 + 20 C3 + 15 C4 + 15 C5
Subject To
 theta[0,0]: C0 + 20 C2 + 12 C7 - 8 C10 >= 0
 theta[0,1]: C0 + 20 C3 - 12 C6 - 20 C11 >= 0
 theta[1,0]: C1 + 15 C4 + 6 C9 - 9 C12 >= 0
 theta[1,1]: C1 + 15 C5 - 6 C8 - 15 C13 >= 0
 p[0,0]: - C2 + C7 + C10 + C14 >= 5
 p[0,1]: - C3 + C6 + C11 + C15 >= 5
 p[1,0]: - C4 + C9 + C12 + C16 >= 10
 p[1,1]: - C5 + C8 + C13 + C17 >= 10
 pi[0]: C2 + C4 - C6 - C8 - C14 - C16 >= 0
 pi[1]: C3 + C5 - C7 - C9 - C15 - C17 >= 0
Bounds
End
