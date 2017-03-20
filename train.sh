#!/usr/bin/env bash
#python main.py --train_data /path/to/conll2005.train.txt --dev_data /path/to/conll2005.dev.txt --test_data /path/to/conll2005.test.txt --init_emb /path/to/senna-dim50.txt --unit gru --layer 4 --batch 32 --hidden 128 --reg 0.0005

mkdir -p train_dir

python main.py -mode train --train_data data/conll05st-release/test-set-wsj.txt --dev_data data/conll05st-release/test-set-wsj.txt --test_data data/conll05st-release/test-set-brown.txt --init_emb data/senna/senna.txt --lr1 .001 --unit gru --layer 4 --hidden 128 --reg 0.0005 --save True   > train_dir/train.log