### stringr のサンプルコード
# 
# 1. インストール
# 2. 読み込み
# 3. サンプルコード
### 3-1. 大文字小文字の変換
### 3-2. 文字列の結合
### 3-3. 文字のカウント
### 3-4. 文字の繰り返し
### 3-5. 文字のマッチング


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

### 3-2. 文字列の結合 ####
str_c('#####', LETTERS[1:5], '*****')
str_c('#####', LETTERS[1:5], sep=' : ')
str_c(LETTERS[1:5], collapse=', ')

### 3-3. 文字のカウント ####
vec_sample_1
str_count(vec_sample_1, 'a')
str_count('今日は晴れ。明日も晴れ。昨日も晴れ', '晴れ')

### 3-4. 文字の繰り返し ####
str_dup(LETTERS[1:3], 5)
str_dup(LETTERS[1:3], 1:3)
str_dup('#', 80)

### 3-5. 文字のマッチング ####
vec_fruits <- c('apple', 'banana', 'pear', 'pinapple', 'grape', 'melon') 

# TRUE/FALSE を返す
str_detect(vec_fruits, 'a') 
str_detect(vec_fruits, '^a') 
str_detect(vec_fruits, 'a$') 
str_detect(vec_fruits, 'r') 
str_detect(vec_fruits, '[pl]')

# マッチした文字列の取り出し
str_extract(vec_fruits, 'a\\w*e')
str_extract(vec_fruits, '\\wa')
str_extract_all(vec_fruits, '\\wa')

# マッチした文字列の取り出し(後方参照を含む)
str_match(vec_fruits, 'a\\w*e')
str_match(vec_fruits, 'a([^a]*)[aiueo]')
str_match_all(vec_fruits, '\\wa')
str_match_all(vec_fruits, 'a([^a]*)[aiueo]')


