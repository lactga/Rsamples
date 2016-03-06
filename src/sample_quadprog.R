# quadprog による最小二乗法での線形回帰 のサンプルコード
# 
# 1. インストール
# 2. 読み込み
# 3. サンプルコード

### 1. インストール ------------------------------------------------------------
# install.packages('quadprog')

### 2. 読み込み ----------------------------------------------------------------
library(quadprog)

### 3. サンプルコード ----------------------------------------------------------
library(glmnet)

mat_x <- as.matrix(iris[, 1:3])
y <- iris[, 4]

m <- lm(Petal.Width ~ . - Species, data=iris)
coef(m)
# (Intercept) Sepal.Length  Sepal.Width Petal.Length 
# -0.2403074   -0.2072661    0.2228285    0.5240831 

m <- glmnet(mat_x, y, family="gaussian", lambda=0)
coef(m)
# (Intercept)  -0.2426937
# Sepal.Length -0.2058425
# Sepal.Width   0.2217447
# Petal.Length  0.5233863

m <- glmnet(mat_x, y, family="gaussian", lower.limits=0, lambda=0)
coef(m)
# (Intercept)  -0.70640627
# Sepal.Length  .         
# Sepal.Width   0.09937575
# Petal.Length  0.42626791

m <- glmnet(mat_x, y, family="gaussian", lower.limits=0, lambda=0, intercept=FALSE)
coef(m)
# (Intercept)  .        
# Sepal.Length .        
# Sepal.Width  .        
# Petal.Length 0.3365109

# 切片あり
mat_x2 <- cbind(1, mat_x)
Q <- t(mat_x2) %*% mat_x2
p <- t(mat_x2) %*% y 
b <- rep(0, 3) 
A <- t(diag(4)[2:4, ])
solve.QP(Q,p,A,b)
# $solution
# [1] -0.70647784  0.00000000  0.09939647  0.42627010

# $unconstrained.solution
# [1] -0.2403074 -0.2072661  0.2228285  0.5240831

# 切片なし
mat_x2 <- cbind(mat_x)
Q <- t(mat_x2) %*% mat_x2
p <- t(mat_x2) %*% y 
b <- rep(0, 3) 
A <- t(diag(3))
solve.QP(Q,p,A,b)
# $solution
# [1] -3.019570e-17  0.000000e+00  3.365109e-01

# 統合制約
mat_x2 <- cbind(1, mat_x)
Q <- t(mat_x2) %*% mat_x2
p <- t(mat_x2) %*% y 
b <- rep(0, 4) 
A <- t(rbind(diag(4)[2:4, ], c(0, 0, -1, 0)))
solve.QP(Q,p,A,b)
