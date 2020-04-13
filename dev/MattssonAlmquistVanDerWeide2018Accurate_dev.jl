using LinearAlgebra

# order 4
h = [
  2.1259737557798e-01,
  1.0260290400758e+00,
  1.0775123588954e+00,
  9.8607273802835e-01,
  1, 1, 1, 1
  ]
e = [1//1, 0, 0, 0, 0, 0, 0, 0]
H = Diagonal(h)

q1 = [0,
  6.5605279837843e-01,
  -1.9875859409017e-01,
  4.2705795711740e-02,
  0, 0, 0, 0]'
q2 = [-q1[2], 0,
  8.1236966439895e-01,
  -1.5631686602052e-01,
  0, 0, 0, 0]'
q3 = [-q1[3], -q2[3], 0,
  6.9694440364211e-01,
  -1//12, 0, 0, 0]'
q4 = [-q1[4], -q2[4], -q3[4], 0,
  2//3, -1//12, 0, 0]'
q5 = [-q1[5] -q2[5] -q3[5] -q4[5] 0 2//3 -1//12 0]
q6 = [0 0 0 1//12 -2//3 0 2//3 -1//12]
q7 = [0 0 0 0 1//12 -2//3 0 2//3]
q8 = [0 0 0 0 0 1//12 -2//3 0]
Q = vcat(q1, q2, q3, q4, q5, q6, q7, q8)

D1 = H \ (Q - 1//2*e*e'); display(D1)



# order 6
h = [
  1.3030223027124e-01,
  6.8851501587715e-01,
  9.5166202564389e-01,
  9.9103890475697e-01,
  1.0028757074552e+00,
  9.9950151111941e-01,
  1, 1, 1
  ]
e = [1//1, 0, 0, 0, 0, 0, 0, 0, 0]
H = Diagonal(h)

q1 = [0,
  6.6042071945824e-01,
  -2.2104152954203e-01,
  7.6243679810093e-02,
  -1.7298206716724e-02,
  1.6753369904210e-03,
  0, 0, 0]'
q2 = [-q1[2], 0,
  8.7352798702787e-01,
  -2.6581719253084e-01,
  5.7458484948314e-02,
  -4.7485599871040e-03,
  0, 0, 0]'
q3 = [-q1[3], -q2[3], 0,
  -1.8881125503769e-01,
  2.4226492138960e-02,
  0, 0, 0, 0]'
q4 = [-q1[4], -q2[4], -q3[4], 0,
  7.6798636652679e-01,
  -1.5715532552963e-01,
  1//60, 0, 0]'
q5 = [-q1[5], -q2[5], -q3[5], -q4[5], 0,
  7.5266872305402e-01,
  -3//20, 1//60, 0]'
q6 = [0 0 -1//60 3//20 -3//4 0 3//4 -3//20 1//60]
q7 = [0 0 0 -1//60 3//20 -3//4 0 3//4 -3//20]
q8 = [0 0 0 0 -1//60 3//20 -3//4 0 3//4]
q9 = [0 0 0 0 0 -1//60 3//20 -3//4 0]
Q = vcat(q1, q2, q3, q4, q5, q6, q7, q8, q9)

D1 = H \ (Q - 1//2*e*e'); display(D1)



# # order 8
# h = [
#   1.4523997892351e-01,
#   7.6864793350174e-01,
#   9.9116487068535e-01,
#   9.9992473335107e-01,
#   1.0002097054636e+00,
#   9.9996591555866e-01,
#   1, 1, 1, 1
#   ]
# e = [1//1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
# H = Diagonal(h)

# q1 = [0,
#   6.6697342753834e-01,
#   -2.2919342278749e-01,
#   7.4283116457276e-02,
#   -1.2020661178873e-02,
#   -4.2460029252999e-05,
#   0, 0, 0, 0]'
# q2 = [-q1[2], 0,
#   8.8241196934163e-01,
#   -2.6653314104602e-01,
#   5.5302527504316e-02,
#   -4.2079282615860e-03,
#   0, 0, 0, 0]'
# q3 = [-q1[3], -q2[3], 0,
#   8.2904844081126e-01,
#   -2.1156614214635e-01,
#   3.9307676460659e-02,
#   -3.5714285714286e-03,
#   0, 0, 0]'
# q4 = [-q1[4], -q2[4], -q3[4], 0,
#   8.0305501223679e-01,
#   -2.0078040553808e-01,
#   3.8095238095238e-02,
#   -3.5714285714286e-03,
#   0, 0]'
# q5 = [-q1[5], -q2[5], -q3[5], -q4[5], 0,
#   8.0024692689207e-01,
#   -1//5, 4//105, -1//280, 0]'
# q6 = [-q1[6] -q2[6] -q3[6] -q4[6] -q5[6] 0 4//5 -1//5 4//105 -1//280]
# q7 = [0 0 1//280 -4//105 1//5 -4//5 0 4//5 -1//5 4//105]
# q8 = [0 0 0 1//280 -4//105 1//5 -4//5 0 4//5 -1//5]
# q9 = [0 0 0 0 1//280 -4//105 1//5 -4//5 0 4//5]
# q10 = [0 0 0 0 0 1//280 -4//105 1//5 -4//5 0]
# Q = vcat(q1, q2, q3, q4, q5, q6, q7, q8, q9, q10)

# D1 = H \ (Q - 1//2*e*e'); display(D1)
