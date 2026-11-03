#!/bin/bash
set -x
cd "/c/Users/USER/Desktop/dev-workspace"

echo "### 1) 현재 위치 확인"
pwd

echo "### 2) 목록 확인 (숨김 파일 포함)"
ls -la

echo "### 3) 디렉토리 생성"
mkdir -p practice

echo "### 4) 이동"
cd practice
pwd

echo "### 5) 빈 파일 생성"
touch sample.txt
touch .hidden_sample

echo "### 6) 목록 확인 (숨김 파일 포함)"
ls -la

echo "### 7) 파일 내용 확인 (쓰기 후 확인)"
echo "hello dev-workspace" > sample.txt
cat sample.txt

echo "### 8) 복사"
cp sample.txt sample_copy.txt
ls -la

echo "### 9) 이동/이름변경"
mv sample_copy.txt renamed.txt
ls -la

echo "### 10) 삭제"
rm renamed.txt
ls -la

echo "### 11) 상위 디렉토리로 복귀"
cd ..
pwd
