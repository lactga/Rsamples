### stringr のサンプルコード
# 
# 1. インストール
# 2. 読み込み
# 3. サンプルコード
### 3-1. 大文字小文字の変換
### 3-2. 文字列の結合
### 3-3. 文字のカウント

### 1. インストール ------------------------------------------------------------
# install.packages('stringr')

### 2. 読み込み ----------------------------------------------------------------
library(stringr)

### 3. サンプルコード ----------------------------------------------------------
vec_sample_1 <- c(
    'This is a pen. that Is A pencil.',
    'aBcDeFg',
    '1 and 2 and 4 and 456'
)
### 3-1. 大文字小文字の変換 ####
# 大文字へ変換
str_to_upper(vec_sample_1)
# 小文字へ変換
str_to_lower(vec_sample_1)
# 先頭を大文字へ変換
str_to_title(vec_sample_1)

### 3-2. 文字列の結合
str_c('#####', LETTERS[1:5], '*****')
str_c('#####', LETTERS[1:5], sep=' : ')
str_c(LETTERS[1:5], collapse=', ')

### 3-3. 文字のカウント
vec_sample_1
str_count(vec_sample_1, 'a')
str_count('今日は晴れ。明日も晴れ。昨日も晴れ', '晴れ')


