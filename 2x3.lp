\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  C0 + C1 + C2 + 10 C3 + 10 C4 + 8 C5 + 8 C6 + 2 C7 + 2 C8
Subject To
 theta[0,0]: C0 + 10 C3 - 2 C10 - 10 C15 >= 0
 theta[0,1]: C0 + 10 C4 + 2 C9 - 8 C16 >= 0
 theta[1,0]: C1 + 8 C5 - 5 C12 - 8 C17 >= 0
 theta[1,1]: C1 + 8 C6 + 5 C11 - 3 C18 >= 0
 theta[2,0]: C2 + 2 C7 + C14 - C19 >= 0
 theta[2,1]: C2 + 2 C8 - C13 - 2 C20 >= 0
 p[0,0]: - C3 + C10 + C15 + C21 >= 1
 p[0,1]: - C4 + C9 + C16 + C22 >= 1
 p[1,0]: - C5 + C12 + C17 + C23 >= 5
 p[1,1]: - C6 + C11 + C18 + C24 >= 5
 p[2,0]: - C7 + C14 + C19 + C25 >= 100
 p[2,1]: - C8 + C13 + C20 + C26 >= 100
 pi[0]: C3 + C5 + C7 - C9 - C11 - C13 - C21 - C23 - C25 >= 0
 pi[1]: C4 + C6 + C8 - C10 - C12 - C14 - C22 - C24 - C26 >= 0
Bounds
End
