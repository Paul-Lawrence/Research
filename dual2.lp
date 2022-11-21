\ Model dual
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  C0 + C1 + C2 + 10 C3 + 10 C4 + 10 C5 + 9 C6 + 9 C7 + 9 C8 + 8 C9 + 8 C10
   + 8 C11
Subject To
 theta[0,0]: C0 + 10 C3 - 9 C13 - 10 C21 >= 0
 theta[0,1]: C0 + 10 C4 + 9 C12 + 9 C14 - C22 >= 0
 theta[0,2]: C0 + 10 C5 - 9 C13 - 10 C23 >= 0
 theta[1,0]: C1 + 9 C6 - 8 C16 - 8 C17 - 9 C24 >= 0
 theta[1,1]: C1 + 9 C7 + 8 C15 - C25 >= 0
 theta[1,2]: C1 + 9 C8 + 8 C15 - C26 >= 0
 theta[2,0]: C2 + 8 C9 + 7 C20 - C27 >= 0
 theta[2,1]: C2 + 8 C10 + 7 C20 - C28 >= 0
 theta[2,2]: C2 + 8 C11 - 7 C18 - 7 C19 - 8 C29 >= 0
 p[0,0]: - C3 + C13 + C14 + C21 + C30 >= 1
 p[0,1]: - C4 + C12 + C14 + C22 + C31 >= 1
 p[0,2]: - C5 + C12 + C13 + C23 + C32 >= 1
 p[1,0]: - C6 + C16 + C17 + C24 + C33 >= 10
 p[1,1]: - C7 + C15 + C17 + C25 + C34 >= 10
 p[1,2]: - C8 + C15 + C16 + C26 + C35 >= 10
 p[2,0]: - C9 + C19 + C20 + C27 + C36 >= 20
 p[2,1]: - C10 + C18 + C20 + C28 + C37 >= 20
 p[2,2]: - C11 + C18 + C19 + C29 + C38 >= 20
 pi[0]: C3 + C6 + C9 - C12 - C15 - C18 - C30 - C33 - C36 >= 0
 pi[1]: C4 + C7 + C10 - C13 - C16 - C19 - C31 - C34 - C37 >= 0
 pi[2]: C5 + C8 + C11 - C14 - C17 - C20 - C32 - C35 - C38 >= 0
Bounds
End
