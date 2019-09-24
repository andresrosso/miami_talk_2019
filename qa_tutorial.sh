#!/bin/bash
echo "Download word2vec embedding"
wget https://s3.amazonaws.com/dl4j-distribution/GoogleNews-vectors-negative300.bin.gz
gunzip GoogleNews-vectors-negative300.bin.gz
mv GoogleNews-vectors-negative300.bin ../

echo "Install trec_eval information retrieval evaluation tool"
tar -xvf trec_eval_latest.tar.gz
sed -i 's/gcc/clang/g' trec_eval.9.0/Makefile
#cat trec_eval.9.0/Makefile
cd trec_eval.9.0
make
cd ..
