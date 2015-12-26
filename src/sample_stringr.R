### stringr �̃T���v���R�[�h
# 
# 1. �C���X�g�[��
# 2. �ǂݍ���
# 3. �T���v���R�[�h
### 3-1. �啶���������̕ϊ�
### 3-2. ������̌���
### 3-3. �����̃J�E���g

### 1. �C���X�g�[�� ------------------------------------------------------------
# install.packages('stringr')

### 2. �ǂݍ��� ----------------------------------------------------------------
library(stringr)

### 3. �T���v���R�[�h ----------------------------------------------------------
vec_sample_1 <- c(
    'This is a pen. that Is A pencil.',
    'aBcDeFg',
    '1 and 2 and 4 and 456'
)
### 3-1. �啶���������̕ϊ� ####
# �啶���֕ϊ�
str_to_upper(vec_sample_1)
# �������֕ϊ�
str_to_lower(vec_sample_1)
# �擪��啶���֕ϊ�
str_to_title(vec_sample_1)

### 3-2. ������̌���
str_c('#####', LETTERS[1:5], '*****')
str_c('#####', LETTERS[1:5], sep=' : ')
str_c(LETTERS[1:5], collapse=', ')

### 3-3. �����̃J�E���g
vec_sample_1
str_count(vec_sample_1, 'a')
str_count('�����͐���B����������B���������', '����')

